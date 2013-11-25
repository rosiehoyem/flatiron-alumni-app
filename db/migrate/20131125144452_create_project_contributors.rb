class CreateProjectContributors < ActiveRecord::Migration
  def change
    create_table :project_contributors do |t|
      t.references :user, index: true
      t.references :project, index: true
      t.string :contribution

      t.timestamps
    end
  end
end
