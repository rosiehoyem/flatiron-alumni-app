class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :forum_id
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
