# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "Project Name"
    description "Project Description"
    client { Faker::Company.name }
    url { Faker::Internet.url }
    photo Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/test_images/test-image.png')))
  end
end
