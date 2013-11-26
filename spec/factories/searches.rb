# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :search do
    keywords "MyString"
    location "MyString"
    experience "MyString"
    skills "MyString"
    for_hire false
  end
end
