class MainTopic < ActiveRecord::Base
  has_many :forums
  validates :topic, presence: true
  
end
