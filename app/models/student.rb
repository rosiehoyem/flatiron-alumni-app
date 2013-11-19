class Student < ActiveRecord::Base
	validates :firstname, :lastname, presence: true, length: { minimum: 2 }
	validates :name, uniqueness: true
	validates :email, presence: true, uniqueness: true

	def name
		[firstname, lastname].join(' ')
	end

end
