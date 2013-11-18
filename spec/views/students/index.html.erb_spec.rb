require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :name => "Name",
        :email => "Email",
        :city => "City",
        :state => "State",
        :linkedin => "Linkedin",
        :twitter => "Twitter",
        :github => "Github",
        :class => "Class",
        :unique => "Unique"
      ),
      stub_model(Student,
        :name => "Name",
        :email => "Email",
        :city => "City",
        :state => "State",
        :linkedin => "Linkedin",
        :twitter => "Twitter",
        :github => "Github",
        :class => "Class",
        :unique => "Unique"
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedin".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Github".to_s, :count => 2
    assert_select "tr>td", :text => "Class".to_s, :count => 2
    assert_select "tr>td", :text => "Unique".to_s, :count => 2
  end
end
