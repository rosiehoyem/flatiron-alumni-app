class AddEduEtcToUsers < ActiveRecord::Migration
  def change
    add_column :users, :education, :string
    add_column :users, :blog_name, :string, :default => 'Blog'
    add_column :users, :blog_url, :string
    add_column :users, :past_work, :string
    add_column :users, :current_employer, :string, :default => 'Looking for opportunities'
    add_column :users, :profile_image, :string
  end
end
