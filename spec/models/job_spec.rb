require 'spec_helper'

describe Job do
  
	it "is invalid without a title" do
		job = FactoryGirl.build(:job, title: nil)
		expect(job).to have(1).errors_on(:title)
	end

	it "is invalid without a description" do
		job = FactoryGirl.build(:job, description: nil)
		expect(job).to have(1).errors_on(:description)
	end

end
