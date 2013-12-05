	# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Seed data for the project/project-contributor models

projects = Project.create([{name: 'Playlistr', client: 'Ruby 003', url: 'flatiron.playlistr.com', description: 'A music sharing site that allows students to put songs into a queue, then vote them up or down.'}, 
	{name: 'Logg.io', client: 'NA', url: 'Logg.io',  description: 'An social application for logging workouts.'},
	{name: 'Tree Census App', client: 'City of Minneapolis', url: 'minneapolis.trees.gov', description: 'A site for collecting data on the number, location, and health of tress in the city of Minneapolis.'},
	{name: 'Flatiron Alumni Site', client: 'Flatiron School', url: 'alumni.flatiron.com', description: 'An open source website for the alumni community. It curently includes functionality for alumni to post to a form, share projects, and to see current events. It also includes an employer section where employers can log-in and post jobs.'},
	{name: 'Dogg.io', client: 'Dog Owners and Lovers', url: 'dogg.io', description: 'A social site that allows'}, 
	{name: 'Bucketliztr', client: 'General Interest', url: 'bucketliztr.com', description: 'A site for creating and sharing simple bucket lists.'}])


employer1 = User.create(firstname: 'Joe', lastname: 'Black', email: 'joe@email.com', company: 'Apruve', employer: true, password: 'password', password_confirmation: 'password')
employer1.save
jobs1 = employer1.jobs.create([{title: 'Ruby/Full Stack Developer', deadline: '2013-10-07 08:23:19.120', description: 'Code Like Someone Cares Apruve is re-inventing the way that businesses spend money. Thats a big vision, and we need your help to make it happen. But writing the code is the easy part. We need you to help us build a company that actually makes peoples lives better. You will be a key part in all sorts of decisions, from software architecture to sales marketing.
	We are looking for experienced software engineer with a track record of working in an entrepreneurial setting to deliver big results with a small team of passionate people. Oh, and who likes to have fun. Oh, and isn not allergic to dogs.
	Random Bullet Points of Stuff We Like:
	Apruve is building the most awesome team in the world of B2B. If you think you are a fit, and you can explain why, there is no need to read any further. We want to talk.'}, 
		{title: 'Ruby Programmer', deadline: '2013-10-07 08:23:19.120', description: 'Successful candidate could be Java person with lots of scripting experience - or Python with Java background - most of the coding would be in Ruby so the jump from those languages should be pretty easy. This person would be working on our sports apps/feeds.
Take a look at our feeds at: developer.sportsdatallc.com'}
		])

employer2 = User.create(firstname: 'Tony', lastname: 'Landers', email: 'tony@email.com', company: 'Sportsdata, llc.', employer: true, password: 'password', password_confirmation: 'password')
employer2.save
jobs2 = employer2.jobs.create([{title: 'Senior Ruby Programer', deadline: '2013-10-07 08:23:19.120', description: 'Successful candidate could be Java person with lots of scripting experience - or Python with Java background - most of the coding would be in Ruby so the jump from those languages should be pretty easy. This person would be working on our sports apps/feeds.
Take a look at our feeds at: developer.sportsdatallc.com'}, 
		{title: 'Ruby Programmer', deadline: '2013-10-07 08:23:19.120', description: 'Successful candidate could be Java person with lots of scripting experience - or Python with Java background - most of the coding would be in Ruby so the jump from those languages should be pretty easy. This person would be working on our sports apps/feeds.
Take a look at our feeds at: developer.sportsdatallc.com'},
		])

employer3 = User.create(firstname: 'Chris', lastname: 'Camden', email: 'chris@email.com', company: 'Westwerk', employer: true, password: 'password', password_confirmation: 'password')
employer3.save
jobs3 = employer3.jobs.create([{title: 'Web Developer', description: 'We are a small team of passionate creatives & coders. Our niche is creating inspiring digital experiences powered by WordPress.
	We are committed to the value of good design, pixel-perfect execution and cutting-edge technology.
	We do not have stringent rules or regulations. We simply hire smart people we trust. As a result, team members are accountable for the work they do, and the work they do speaks for itself. 
	The Job. We are growing our business, and are looking for a full-time developer with WordPress experience. Working alongside or leading our team here, you will be responsible for building, learning and breathing everything web and WordPress. You will bring designs to life, make your own decisions, and be responsible for the integrity of your work. You will have the opportunity to contribute to projects both in small teams and independently.'},
	{title: 'JS Ninja', deadline: '2013-10-07 08:23:19.120', description: 'We are a small team of passionate creatives & coders. Our niche is creating inspiring digital experiences powered by WordPress.
We are committed to the value of good design, pixel-perfect execution and cutting-edge technology.
We do not have stringent rules or regulations. We simply hire smart people we trust. As a result, team members are accountable for the work they do, and the work they do speaks for itself.
The Job. We are growing our business, and are looking for a full-time developer with WordPress experience. Working alongside or leading our team here, you will be responsible for building, learning and breathing everything web/app and WordPress. You will bring designs to life, make your own decisions, and be responsible for the integrity of your work. You will have the opportunity to contribute to projects both in small teams and independently.'}])

