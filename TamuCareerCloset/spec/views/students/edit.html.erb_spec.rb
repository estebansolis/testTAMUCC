require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :UIN => "MyString",
      :First_Name => "MyString",
      :Last_Name => "MyString",
      :Email => "MyString",
      :Phone_Number => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input#student_UIN[name=?]", "student[UIN]"

      assert_select "input#student_First_Name[name=?]", "student[First_Name]"

      assert_select "input#student_Last_Name[name=?]", "student[Last_Name]"

      assert_select "input#student_Email[name=?]", "student[Email]"

      assert_select "input#student_Phone_Number[name=?]", "student[Phone_Number]"
    end
  end
end
