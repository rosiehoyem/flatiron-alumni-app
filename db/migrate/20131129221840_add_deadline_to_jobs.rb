class AddDeadlineToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :deadline, :datetime
  end
end
