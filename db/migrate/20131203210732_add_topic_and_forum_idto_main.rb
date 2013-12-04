class AddTopicAndForumIdtoMain < ActiveRecord::Migration
  def change
    add_column :main_topics, :topic, :string
    add_column :forums, :main_topic_id, :integer
  end
end
