require 'rails_helper'

RSpec.describe "rentals/new", type: :view do
  before(:each) do
    assign(:rental, Rental.new(
      :Rental_ID => "MyString",
      :UIN => "MyString",
      :Apparel_ID => "MyString",
      :Checkout_Date => "MyString",
      :Expected_Return_Date => "MyString",
      :Return_Date => "MyString"
    ))
  end

  it "renders new rental form" do
    render

    assert_select "form[action=?][method=?]", rentals_path, "post" do

      assert_select "input#rental_Rental_ID[name=?]", "rental[Rental_ID]"

      assert_select "input#rental_UIN[name=?]", "rental[UIN]"

      assert_select "input#rental_Apparel_ID[name=?]", "rental[Apparel_ID]"

      assert_select "input#rental_Checkout_Date[name=?]", "rental[Checkout_Date]"

      assert_select "input#rental_Expected_Return_Date[name=?]", "rental[Expected_Return_Date]"

      assert_select "input#rental_Return_Date[name=?]", "rental[Return_Date]"
    end
  end
end
