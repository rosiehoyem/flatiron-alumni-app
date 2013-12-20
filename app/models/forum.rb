class Forum < ActiveRecord::Base
  belongs_to :user
  has_many :replies
  belongs_to :main_topic
  validates :title, :content, presence: true
end
