class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :location, :string
    add_column :users, :linkedin, :string
    add_column :users, :twitter, :string
    add_column :users, :github, :string
    add_column :users, :cohort, :string
  end
end
