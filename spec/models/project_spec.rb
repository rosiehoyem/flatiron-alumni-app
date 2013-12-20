require 'spec_helper'

describe Project do

	it "is valid with a name and description" do
		project = Project.new(
			name: 'Project',
			description: 'Project Description')
		expect(project).to be_valid
	end

	it "is invalid without a name" do
		project = FactoryGirl.build(:project, name: nil)
		expect(project).to have(2).errors_on(:name)
	end
	
	it "is invalid without a description" do
		project = FactoryGirl.build(:project, description: nil)
		expect(project).to have(1).errors_on(:description)
	end

	it "is invalid with a duplicate name" do
		FactoryGirl.create(:project, name: "project")
		project = FactoryGirl.build(:project, name: "project")
		expect(project).to have(1).errors_on(:name)
	end

end
