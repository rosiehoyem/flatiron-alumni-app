# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
  	title "Rails Developer"
  	description "Rails Developer Job Description"
  	contact { Faker::Name.name}
  end
end
