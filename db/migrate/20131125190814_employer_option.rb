class EmployerOption < ActiveRecord::Migration
  def change
    add_column :users, :employer, :boolean, :default => false
  end
end
