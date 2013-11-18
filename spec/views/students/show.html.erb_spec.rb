require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :name => "Name",
      :email => "Email",
      :city => "City",
      :state => "State",
      :linkedin => "Linkedin",
      :twitter => "Twitter",
      :github => "Github",
      :class => "Class",
      :unique => "Unique"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Linkedin/)
    rendered.should match(/Twitter/)
    rendered.should match(/Github/)
    rendered.should match(/Class/)
    rendered.should match(/Unique/)
  end
end
