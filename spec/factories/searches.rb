# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :search do
    keywords "James"
    location "New York"
    experience "Marketing, Project Management"
    skills "Ruby on Rails, Javascript"
    for_hire true
  end
end
