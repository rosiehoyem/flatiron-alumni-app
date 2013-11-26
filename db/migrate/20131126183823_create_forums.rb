class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.timestamps
    end
  end
end
