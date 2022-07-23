class ItemPriceLetter < ApplicationRecord
  belongs_to :item
  belongs_to :price_item
end
