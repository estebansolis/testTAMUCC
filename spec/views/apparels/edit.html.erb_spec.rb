require 'rails_helper'

RSpec.describe "apparels/edit", type: :view do
  before(:each) do
    @apparel = assign(:apparel, Apparel.create!(
      :Apparel_ID => "MyString",
      :Sex => "MyString",
      :Article => "MyString",
      :Size => "MyString",
      :Status => "MyString"
    ))
  end

  it "renders the edit apparel form" do
    render

    assert_select "form[action=?][method=?]", apparel_path(@apparel), "post" do

      assert_select "input#apparel_Apparel_ID[name=?]", "apparel[Apparel_ID]"

      assert_select "input#apparel_Sex[name=?]", "apparel[Sex]"

      assert_select "input#apparel_Article[name=?]", "apparel[Article]"

      assert_select "input#apparel_Size[name=?]", "apparel[Size]"

      assert_select "input#apparel_Status[name=?]", "apparel[Status]"
    end
  end
end
