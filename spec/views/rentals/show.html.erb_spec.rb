require 'rails_helper'

RSpec.describe "rentals/show", type: :view do
  before(:each) do
    @rental = assign(:rental, Rental.create!(
      :Rental_ID => "Rental",
      :UIN => "Uin",
      :Apparel_ID => "Apparel",
      :Checkout_Date => "Checkout Date",
      :Expected_Return_Date => "Expected Return Date",
      :Return_Date => "Return Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rental/)
    expect(rendered).to match(/Uin/)
    expect(rendered).to match(/Apparel/)
    expect(rendered).to match(/Checkout Date/)
    expect(rendered).to match(/Expected Return Date/)
    expect(rendered).to match(/Return Date/)
  end
end
