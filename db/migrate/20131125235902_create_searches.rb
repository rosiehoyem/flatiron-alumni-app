class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :location
      t.string :experience
      t.string :skills
      t.boolean :for_hire

      t.timestamps
    end
  end
end
