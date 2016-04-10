require 'rails_helper'

RSpec.describe "rentals/edit", type: :view do
  before(:each) do
    @rental = assign(:rental, Rental.create!(
      :Rental_ID => "MyString",
      :UIN => "MyString",
      :Apparel_ID => "MyString"
    ))
  end

  it "renders the edit rental form" do
    render

    assert_select "form[action=?][method=?]", rental_path(@rental), "post" do

      assert_select "input#rental_Rental_ID[name=?]", "rental[Rental_ID]"

      assert_select "input#rental_UIN[name=?]", "rental[UIN]"

      assert_select "input#rental_Apparel_ID[name=?]", "rental[Apparel_ID]"
    end
  end
end
