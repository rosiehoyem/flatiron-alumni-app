class AddUrlAndClientToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :url, :string
    add_column :projects, :client, :string
  end
end
