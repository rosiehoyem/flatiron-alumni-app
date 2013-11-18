require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :name => "MyString",
      :email => "MyString",
      :city => "MyString",
      :state => "MyString",
      :linkedin => "MyString",
      :twitter => "MyString",
      :github => "MyString",
      :class => "MyString",
      :unique => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", students_path, "post" do
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
