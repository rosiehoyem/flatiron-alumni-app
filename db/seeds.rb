	# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Forem::Group.create([{:name => 'Ruby 003'}, {:name => 'Ruby 002'}, {:name => 'Ruby 001'}, {:name => 'Ruby 000'}, {:name => 'iOS 000'}, {:name => 'Fellowship 000'}])
Forem::Category.create([{:name => 'Ruby on Rails'}, {:name => 'iOS'}])
Forem::Forum.create([{:name => 'Events', :category_id => '1'}, {:name => 'Jobs', :category_id => '1'}, {:name => 'Resources', :category_id => '1'}, {:name => 'Help Line', :category_id => '1'}])


#Seed data for the project/project-contributor models
projects = Project.create([{name: 'Flatiron Alumni Site', description: 'The fabulous site you are on!'}, {name: 'Logg.io', description: 'An social application for logging workouts.'}])




