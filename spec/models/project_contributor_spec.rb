require 'spec_helper'

describe ProjectContributor do

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
