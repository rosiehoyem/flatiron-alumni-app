require 'spec_helper'

describe Student do
	
	it "has a valid factory" do
		expect(FactoryGirl.build(:student)).to be_valid
	end

	it "is valid with a firstname and lastname" do
		student = Student.new(
			firstname: 'Aaron',
			lastname: 'Sumner')
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
	
	it "returns a student's full name as a string" do
		student = FactoryGirl.build(:student,
		firstname: "Jane", lastname: "Doe")
		expect(student.name).to eq "Jane Doe"
	end
end
