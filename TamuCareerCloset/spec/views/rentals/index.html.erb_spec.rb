require 'rails_helper'

RSpec.describe "rentals/index", type: :view do
  before(:each) do
    assign(:rentals, [
      Rental.create!(
        :Rental_ID => "Rental",
        :UIN => "Uin",
        :Apparel_ID => "Apparel"
      ),
      Rental.create!(
        :Rental_ID => "Rental",
        :UIN => "Uin",
        :Apparel_ID => "Apparel"
      )
    ])
  end

  it "renders a list of rentals" do
    render
    assert_select "tr>td", :text => "Rental".to_s, :count => 2
    assert_select "tr>td", :text => "Uin".to_s, :count => 2
    assert_select "tr>td", :text => "Apparel".to_s, :count => 2
  end
end
