json.extract! document, :id, :purchaser_name, :item_description, :item_price, :purchase_count, :merchant_address, :merchant_name, :created_at, :updated_at
json.url document_url(document, format: :json)
