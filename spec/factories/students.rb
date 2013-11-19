# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :student do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    city { Faker::Address.city }
    state { Faker::Address.state }
    linkedin "linkedin"
    twitter "twitter"
    github "github"
    cohort "semester"
    unique "Test"

	  factory :invalid_student do
	    firstname nil
	    lastname nil

 		end
  end
end

