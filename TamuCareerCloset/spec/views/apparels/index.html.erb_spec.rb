require 'rails_helper'

RSpec.describe "apparels/index", type: :view do
  before(:each) do
    assign(:apparels, [
      Apparel.create!(
        :Apparel_ID => "Apparel",
        :Sex => "Sex",
        :Article => "Article",
        :Size => "Size"
      ),
      Apparel.create!(
        :Apparel_ID => "Apparel",
        :Sex => "Sex",
        :Article => "Article",
        :Size => "Size"
      )
    ])
  end

  it "renders a list of apparels" do
    render
    assert_select "tr>td", :text => "Apparel".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "Article".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
  end
end
