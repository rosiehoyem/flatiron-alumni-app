class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :user_id
      t.string :title
      t.string :description
      t.string :contact


      t.timestamps
    end
  end
end
