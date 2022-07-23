class Vendor < ApplicationRecord
  has_many :price_item
  has_many :item
  belongs_to :country
end
