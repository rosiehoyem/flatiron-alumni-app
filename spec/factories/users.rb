# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email}
    password "MyString"
    password_confirmation "MyString"
    password_digest "MyString"
  end
end
