class Search < ActiveRecord::Base

	def users
	  @users ||= find_users
	end

	private

	def find_users
	  users = User.order(:name)
	  users = users.where(for_hire: for_hire) if for_hire.present?
	  users = users.where("name like ?", "%#{keywords}%") if keywords.present?
	  users = users.where("location like ?", "%#{location}%") if location.present?
	  users = users.where(skills: skills) if skills.present?
	  users = users.where(experience: experience) if experience.present?
	  users
	end

end
