class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :state
      t.string :linkedin
      t.string :twitter
      t.string :github
      t.string :cohort
      t.string :unique

      t.timestamps
    end
  end
end
