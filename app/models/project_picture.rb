class ProjectPicture < ActiveRecord::Base
  mount_uploader :attachment, ProjectPhotoUploader
  belongs_to :project

end
