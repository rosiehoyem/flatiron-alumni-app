# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_contributor do
    user nil
    project nil
    contribution "MyString"
  end
end
