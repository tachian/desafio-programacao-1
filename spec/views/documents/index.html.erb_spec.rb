require 'rails_helper'

RSpec.describe "documents/index", type: :view do
  before(:each) do
    assign(:documents, [
      Document.create!(
        :purchaser_name => "Purchaser Name",
        :item_description => "Item Description",
        :item_price => "9.99",
        :purchase_count => 2,
        :merchant_address => "Merchant Address",
        :merchant_name => "Merchant Name"
      ),
      Document.create!(
        :purchaser_name => "Purchaser Name",
        :item_description => "Item Description",
        :item_price => "9.99",
        :purchase_count => 2,
        :merchant_address => "Merchant Address",
        :merchant_name => "Merchant Name"
      )
    ])
  end

  it "renders a list of documents" do
    render
    assert_select "tr>td", :text => "Purchaser Name".to_s, :count => 2
    assert_select "tr>td", :text => "Item Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Merchant Address".to_s, :count => 2
    assert_select "tr>td", :text => "Merchant Name".to_s, :count => 2
  end
end
