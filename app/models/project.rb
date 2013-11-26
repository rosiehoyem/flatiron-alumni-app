class Project < ActiveRecord::Base
	has_many :project_contributors
	has_many :users, through: :project_contributors

end
