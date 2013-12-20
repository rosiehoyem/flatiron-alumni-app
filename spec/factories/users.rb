# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email}
    password "password"
    password_confirmation "password"
    firstname { Faker::Name.first_name}
    lastname { Faker::Name.last_name}
    location { Faker::Address.city}
    linkedin "linkedin"
    twitter "twitter"
    github "github"
    cohort "cohort"
    profile_image Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/test_images/test-image.png')))
  end
end
