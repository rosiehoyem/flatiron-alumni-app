class CreateMainTopics < ActiveRecord::Migration
  def change
    create_table :main_topics do |t|

      t.timestamps
    end
  end
end
