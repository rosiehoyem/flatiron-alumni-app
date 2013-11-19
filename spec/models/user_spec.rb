require 'spec_helper'

describe User do
  
  it "is invalid without an email address" do
		user = FactoryGirl.build(:user, email: nil)
		expect(user).to have(1).errors_on(:email)
	end

	it "is invalid with a duplicate email address" do
		FactoryGirl.create(:user, email: "aaron@example.com")
		user = FactoryGirl.build(:user, email: "aaron@example.com")
		expect(user).to have(1).errors_on(:email)
	end
end
