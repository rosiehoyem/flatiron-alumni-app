class AddGitrepoToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :gitrepo, :string
  end
end
