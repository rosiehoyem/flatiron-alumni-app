# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email:'test@gmail.com', password: 'test', password_confirmation:'test')
student = user.students.create(firstname:'firstname', lastname:'lastname', city:'New York City', state:'New York', linkedin: 'studlink', twitter: 'studtwit', github: 'studgit', cohort: 'Fall 2013', unique: 'text test hello!')
