require 'spec_helper'

describe "Projects" do
  describe "GET /projects" do
    it "displays projects" do
      Project.create!(:name => "Web App", :description => "Cool web app.")
      visit projects_path
      page.should have_content("Web App")
    end
  end
  
  describe "POST /projects" do
    it "creates project" do
      visit projects_path
      fill_in "Project Name", :with => "Web Application"
      fill_in "Project Description", :with => "Wicked cool web application."
      click_button "Save Project"
      # save_and_open_page
      page.should have_content("Web Application")
      page.should have_content("Wicked cool web application.")
    end
  end
end
