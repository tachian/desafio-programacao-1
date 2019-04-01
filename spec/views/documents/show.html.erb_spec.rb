require 'rails_helper'

RSpec.describe "documents/show", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      :purchaser_name => "Purchaser Name",
      :item_description => "Item Description",
      :item_price => "9.99",
      :purchase_count => 2,
      :merchant_address => "Merchant Address",
      :merchant_name => "Merchant Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Purchaser Name/)
    expect(rendered).to match(/Item Description/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Merchant Address/)
    expect(rendered).to match(/Merchant Name/)
  end
end
