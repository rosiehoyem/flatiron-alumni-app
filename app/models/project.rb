class Project < ActiveRecord::Base
  mount_uploader :attachment, ProjectPhotoUploader
	has_many :project_contributors
	has_many :users, through: :project_contributors
  has_many :project_pictures

	validates :name, :description, presence: true, uniqueness: true 
  validates :name, length: { minimum: 3 }

end
