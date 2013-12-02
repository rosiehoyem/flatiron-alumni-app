require 'spec_helper'

describe "Forums" do
  describe "GET /forums" do
    it "displays forums" do
      Forum.create!(:title => "Forum Title", :content => "Forum content.")
      visit forums_path
      page.should have_content("Forum Title")
    end
  
  describe "POST /forums" do
    it "creates forum" do
      visit forums_path
      fill_in "Title", :with => "Forum Title"
      fill_in "Content", :with => "Forum content."
      click_button "Post New Topic"
      # save_and_open_page
      page.should have_content("Forum Title")
      page.should have_content("Forum content.")
    end
  end
end
