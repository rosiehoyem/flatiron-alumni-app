class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:linkedin]

  mount_uploader :attachment, AttachmentUploader
	has_many :students
  has_many :jobs
  has_many :forums
  has_many :replies  
  has_many :project_contributors
  has_many :projects, through: :project_contributors      

  validates :firstname, presence: true
  validates :lastname, presence: true
  # validates :password_confirmation, presence: true

  before_save :name

  def alumni?
    !self.employer
  end

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

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      self.all
    end
  end

end
