require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :UIN => "Uin",
        :First_Name => "First Name",
        :Last_Name => "Last Name",
        :Email => "Email",
        :Phone_Number => "Phone Number"
      ),
      Student.create!(
        :UIN => "Uin",
        :First_Name => "First Name",
        :Last_Name => "Last Name",
        :Email => "Email",
        :Phone_Number => "Phone Number"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Uin".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
  end
end
