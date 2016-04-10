require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :UIN => "MyString",
      :First_Name => "MyString",
      :Last_Name => "MyString",
      :Email => "MyString",
      :Phone_Number => "MyString"
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input#student_UIN[name=?]", "student[UIN]"

      assert_select "input#student_First_Name[name=?]", "student[First_Name]"

      assert_select "input#student_Last_Name[name=?]", "student[Last_Name]"

      assert_select "input#student_Email[name=?]", "student[Email]"

      assert_select "input#student_Phone_Number[name=?]", "student[Phone_Number]"
    end
  end
end
