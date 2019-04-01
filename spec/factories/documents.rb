FactoryBot.define do
  factory :document do
    purchaser_name { "MyString" }
    item_description { "MyString" }
    item_price { 1.10 }
    purchase_count { 10 }
    merchant_address { "MyString" }
    merchant_name { "MyString" }
  end

  factory :invalid_document, parent: :document do
    purchaser_name { nil }
  end

  factory :updated_document, parent: :document do
    purchaser_name { "Purchase name updated" }
  end

end
