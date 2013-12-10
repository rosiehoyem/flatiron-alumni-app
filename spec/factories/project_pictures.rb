# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_picture do
  	photo Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/test_images/test-image.png')))
  end
end
