require 'rails_helper'

RSpec.describe "rentals/index", type: :view do
  before(:each) do
    assign(:rentals, [
      Rental.create!(
        :Rental_ID => "Rental",
        :UIN => "Uin",
        :Apparel_ID => "Apparel",
        :Checkout_Date => "Checkout Date",
        :Expected_Return_Date => "Expected Return Date",
        :Return_Date => "Return Date"
      ),
      Rental.create!(
        :Rental_ID => "Rental",
        :UIN => "Uin",
        :Apparel_ID => "Apparel",
        :Checkout_Date => "Checkout Date",
        :Expected_Return_Date => "Expected Return Date",
        :Return_Date => "Return Date"
      )
    ])
  end

  it "renders a list of rentals" do
    render
    assert_select "tr>td", :text => "Rental".to_s, :count => 2
    assert_select "tr>td", :text => "Uin".to_s, :count => 2
    assert_select "tr>td", :text => "Apparel".to_s, :count => 2
    assert_select "tr>td", :text => "Checkout Date".to_s, :count => 2
    assert_select "tr>td", :text => "Expected Return Date".to_s, :count => 2
    assert_select "tr>td", :text => "Return Date".to_s, :count => 2
  end
end
