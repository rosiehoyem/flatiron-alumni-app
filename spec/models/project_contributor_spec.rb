require 'spec_helper'

describe ProjectContributor do
  it "has a valid factory" do
		expect(FactoryGirl.build(:project_contribution)).to be_valid
	end

	it "is valid with a contribution, user, and project" do
		project_contribution = ProjectContribution.new(
			contribution: 'great code',
			user_id: "1",
			project_id: "1")
		expect(project_contribution).to be_valid
	end

	it "is invalid without a project_id" do
		project_contribution = FactoryGirl.build(:project_contribution, project_id: nil)
		expect(project_contribution).to have(1).errors_on(:name)
	end
	
	it "is invalid without a user_id" do
		project_contribution = FactoryGirl.build(:project_contribution, user_id: nil)
		expect(project_contribution).to have(1).errors_on(:user)
	end

	it "is invalid without a contribution" do
		project_contribution = FactoryGirl.build(:project_contribution, contribution: nil)
		expect(project_contribution).to have(1).errors_on(:contribution)
	end

	it "is invalid with duplicate project and user" do
		FactoryGirl.create(:project_contribution, project: "project", user: "user")
		project_contribution = FactoryGirl.build(:project_contribution, project: "project", user: "user")
		expect(project_contribution).to have(1).errors_on(:name)
	end

end
