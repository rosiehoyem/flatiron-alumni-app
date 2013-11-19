class Student < ActiveRecord::Base
	belongs_to :user

	validates :firstname, :lastname, presence: true, length: { minimum: 2 }
	validates :name, uniqueness: true
	
	before_save :name

	def name
		[firstname, lastname].join(' ')
	end

end
