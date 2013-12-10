require 'spec_helper'

describe "Jobs" do
  describe "GET /jobs" do
    it "displays jobs" do
      Job.create!(:title => "Great Job", :description => "This is a great job.", :contact => "Job Contact")
      visit jobs_path
      page.should have_content("Great Job")
    end
  end
  
  describe "POST /jobs" do
    it "creates job" do
      visit jobs_path
      fill_in "Enter Job title", :with => "Great Job"
      fill_in "Enter Description", :with => "This is a great job."
      fill_in "Contact Email / Phone Number", :with => "Job Contact"
      click_button "Save Project"
      # save_and_open_page
      page.should have_content("Great Job")
      page.should have_content("This is a great job.")
    end
  end
end
