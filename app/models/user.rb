class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:linkedin]

	has_many :students
  has_many :jobs
  # validates :email, presence: true, uniqueness: true
  # validates :password_confirmation, presence: true

  
  has_many :project_contributors
  has_many :projects, through: :project_contributors      


  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.name
      user.token = auth.credentials.token
      user.secret = auth.credentials.secret
      user.email = auth.info.email
      user.firstname = auth.info.first_name
      user.lastname = auth.info.last_name
      user.location = auth.info.location
      user.linkedin = auth.public_profile
      user.profile_image = auth.info.image
      user.current_employer = auth.info.headline
      user.name = auth.info.name
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  def name 
    @name = self.firstname.to_s + " " + self.lastname.to_s
  end

  def password_required?
    super && provider.blank?
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end

  def to_s
  	name
	end
	
  def linkedin_request(token, secret)
    client = LinkedIn::Client.new(ENV["api_key"], ENV["secret_key"])
    client.authorize_from_access(self.token, self.secret)
  end

  def get_profile_hash
    @profile = @client.profile(:fields => %w(interests headline main-address positions educations public-profile-url))
    build_profile_hash(@profile)
  end
 
  def build_profile_hash(profile)
    jobs = parse_jobs(profile.positions.all)
    schools = parse_education(profile.educations.all)
    profile_hash = {
      :jobs => jobs,
      :schools => schools,
      :urls => [{:link_type=>'LinkedIn', :url=>profile.public_profile_url}]
    }
    profile_hash
  end
 
  def parse_education(educations)
    return [] if educations == nil || educations.count == 0
    schools = []
    educations.each do |school|
      schools << {:graduation_year =>(!school.end_date.nil?) ? school.end_date.year : nil,
                  :name => school.school_name,
                  :major => school.field_of_study,
                  :degree => school.degree}
    end
    schools
  end
 
  def parse_jobs(positions)
    return [] if positions == nil || positions.count == 0
    jobs = []
    positions.each do |position|
      if position.start_date == nil || position.start_date.month == nil || position.start_date.year == nil
        start_date = nil
      else
        start_date = position.start_date.month.to_s + "/" + position.start_date.year.to_s + "\n"
      end
      if position.end_date == nil || position.end_date.month == nil || position.end_date.year == nil
        end_date = nil
      else
        end_date = position.end_date.month.to_s + "/" + position.end_date.year.to_s
      end
      jobs << {
        company: position.company.name,
        title: position.title,
        industry: position.company.industry,
        start_date: start_date,
        end_date: end_date,
        details: position.summary
      }
    end
    jobs
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
