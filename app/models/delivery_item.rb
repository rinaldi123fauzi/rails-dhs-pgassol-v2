class DeliveryItem < ApplicationRecord
  belongs_to :delivery
  belongs_to :price_item
end
