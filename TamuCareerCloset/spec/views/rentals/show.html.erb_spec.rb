require 'rails_helper'

RSpec.describe "rentals/show", type: :view do
  before(:each) do
    @rental = assign(:rental, Rental.create!(
      :Rental_ID => "Rental",
      :UIN => "Uin",
      :Apparel_ID => "Apparel"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rental/)
    expect(rendered).to match(/Uin/)
    expect(rendered).to match(/Apparel/)
  end
end
