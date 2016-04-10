require 'rails_helper'

RSpec.describe "apparels/show", type: :view do
  before(:each) do
    @apparel = assign(:apparel, Apparel.create!(
      :Apparel_ID => "Apparel",
      :Sex => "Sex",
      :Article => "Article",
      :Size => "Size"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Apparel/)
    expect(rendered).to match(/Sex/)
    expect(rendered).to match(/Article/)
    expect(rendered).to match(/Size/)
  end
end
