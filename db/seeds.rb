# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

student = Student.create([{name:'Test Student', email:'test@flatironschool.com', city:'New York City', state:'New York', linkedin: 'studlink', twitter: 'studtwit', github: 'studgit', cohort: 'Fall 2013', unique: 'text test hello!'}])

