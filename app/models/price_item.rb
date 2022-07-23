class PriceItem < ApplicationRecord
  has_many :delivery_item
  has_many :item_price_letter
  belongs_to :vendor
  belongs_to :country
  belongs_to :currency
  belongs_to :referensi_item, optional: true
  belongs_to :item
  belongs_to :price_letter, optional: true
end