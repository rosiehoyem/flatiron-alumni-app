class RemoveEmailFromStudent < ActiveRecord::Migration
  def change
  	remove_column :students, :email
  end
end
