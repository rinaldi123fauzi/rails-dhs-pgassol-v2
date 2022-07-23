class Country < ApplicationRecord
  has_many :price_item
  has_many :vendor
end
