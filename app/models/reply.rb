class Reply < ActiveRecord::Base
  belongs_to :forum
  belongs_to :user
  validates :content, presence: true
end
