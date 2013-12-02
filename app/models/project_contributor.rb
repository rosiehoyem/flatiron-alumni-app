class ProjectContributor < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates_uniqueness_of :user_id, :scope => :project
  validates_uniqueness_of :project_id, :scope => :user
  validates :contribution, presence: true
end
