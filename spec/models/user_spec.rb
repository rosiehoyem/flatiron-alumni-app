require 'spec_helper'

describe User do
  
  it "has a valid factory" do
		expect(FactoryGirl.build(:user)).to be_valid
	end

	it "is valid with a firstname, lastname, and email" do
		user = User.new(
			firstname: 'Aaron',
			lastname: 'Smith',
			email: 'aaron@example.com',
			password: 'password')
		expect(user).to be_valid
	end

	it "is invalid without a firstname" do
		user = FactoryGirl.build(:user, firstname: nil)
		expect(user).to have(1).errors_on(:firstname)
	end

	it "is invalid without a lastname" do
		user = FactoryGirl.build(:user, lastname: nil)
		expect(user).to have(1).errors_on(:lastname)
	end
	
	it "is invalid without an email address" do
		user = FactoryGirl.build(:user, email: nil)
		expect(user).to have(1).errors_on(:email)
	end

	it "is invalid with a duplicate email address" do
		FactoryGirl.create(:user, email: "aaron@example.com")
		user = FactoryGirl.build(:user, email: "aaron@example.com")
		expect(user).to have(1).errors_on(:email)
	end

	# it "is invalid without a password" do
	# 	user = FactoryGirl.build(:user, encrypted_password: nil)
	# 	expect(user).to have(1).errors_on(:encrypted_password)
	# end
end
