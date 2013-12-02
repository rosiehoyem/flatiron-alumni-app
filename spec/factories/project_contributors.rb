# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_contributor do
    user_id "1"
    project_id "1"
    contribution "Project Contribution"
  end
end
