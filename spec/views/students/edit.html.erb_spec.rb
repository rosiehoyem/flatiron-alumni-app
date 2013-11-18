require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :name => "MyString",
      :email => "MyString",
      :city => "MyString",
      :state => "MyString",
      :linkedin => "MyString",
      :twitter => "MyString",
      :github => "MyString",
      :class => "MyString",
      :unique => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", student_path(@student), "post" do
      assert_select "input#student_name[name=?]", "student[name]"
      assert_select "input#student_email[name=?]", "student[email]"
      assert_select "input#student_city[name=?]", "student[city]"
      assert_select "input#student_state[name=?]", "student[state]"
      assert_select "input#student_linkedin[name=?]", "student[linkedin]"
      assert_select "input#student_twitter[name=?]", "student[twitter]"
      assert_select "input#student_github[name=?]", "student[github]"
      assert_select "input#student_class[name=?]", "student[class]"
      assert_select "input#student_unique[name=?]", "student[unique]"
    end
  end
end
