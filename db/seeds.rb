# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email:'test@gmail.com', password: 'test', password_confirmation:'test')
student = user.students.create(firstname:'firstname', lastname:'lastname', city:'New York City', state:'New York', linkedin: 'studlink', twitter: 'studtwit', github: 'studgit', cohort: 'Fall 2013', unique: 'text test hello!')

Forem::Category.create([{:name => 'Events'}, {:name => 'Jobs'}, {:name => 'Resources'}, {:name => 'Help Line'}])
Forem::Group.create([{:name => 'Ruby 003'}, {:name => 'Ruby 002'}, {:name => 'Ruby 001'}, {:name => 'Ruby 000'}, {:name => 'iOS 000'}, {:name => 'Fellowship 000'}])
Forem::Forum.create([{:name => 'Ruby on Rails'}, {:name => 'iOS'}])


# Forem::Topic.create([{:subject => 'ruby topic'}, {:subject => 'Ruby topic 2'}])
