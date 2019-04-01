require 'csv'

class Document < ApplicationRecord

  validates :purchaser_name, presence: true
  validates :item_description, presence: true
  validates :item_price, presence: true
  validates :purchase_count, presence: true
  validates :merchant_address, presence: true
  validates :merchant_name, presence: true

  def self.import import_file 

    CSV.foreach(import_file.path, {headers: true, :col_sep => "\t" }) do |row|
      document = Document.new()
      document.purchaser_name = row[0]
      document.item_description = row[1]
      document.item_price = row[2]
      document.purchase_count = row[3]
      document.merchant_address = row[4]
      document.merchant_name = row[5]
      document.save
    end

  end
end
