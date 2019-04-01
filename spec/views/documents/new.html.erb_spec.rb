require 'rails_helper'

RSpec.describe "documents/new", type: :view do
  before(:each) do
    assign(:document, Document.new(
      :purchaser_name => "MyString",
      :item_description => "MyString",
      :item_price => "9.99",
      :purchase_count => 1,
      :merchant_address => "MyString",
      :merchant_name => "MyString"
    ))
  end

  it "renders new document form" do
    render

    assert_select "form[action=?][method=?]", documents_path, "post" do

      assert_select "input[name=?]", "document[purchaser_name]"

      assert_select "input[name=?]", "document[item_description]"

      assert_select "input[name=?]", "document[item_price]"

      assert_select "input[name=?]", "document[purchase_count]"

      assert_select "input[name=?]", "document[merchant_address]"

      assert_select "input[name=?]", "document[merchant_name]"
    end
  end
end
