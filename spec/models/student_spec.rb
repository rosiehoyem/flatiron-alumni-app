require 'spec_helper'

describe Student do
	
	it "has a valid factory" do
		expect(FactoryGirl.build(:student)).to be_valid
	end

	it "is valid with a firstname, lastname and email" do
		student = Student.new(
			firstname: 'Aaron',
			lastname: 'Sumner',
			email: 'tester@example.com')
		expect(student).to be_valid
	end

	it "is invalid without a firstname" do
		student = FactoryGirl.build(:student, firstname: nil)
		expect(student).to have(2).errors_on(:firstname)
	end
	
	it "is invalid without a lastname" do
		student = FactoryGirl.build(:student, lastname: nil)
		expect(student).to have(2).errors_on(:lastname)
	end
	
	it "is invalid without an email address" do
		student = FactoryGirl.build(:student, email: nil)
		expect(student).to have(1).errors_on(:email)
	end
	
	it "returns a student's full name as a string" do
		student = FactoryGirl.build(:student,
		firstname: "Jane", lastname: "Doe")
		expect(student.name).to eq "Jane Doe"
	end

	it "is invalid with a duplicate email address" do
		FactoryGirl.create(:student, email: "aaron@example.com")
		student = FactoryGirl.build(:student, email: "aaron@example.com")
		expect(student).to have(1).errors_on(:email)
	end

end
