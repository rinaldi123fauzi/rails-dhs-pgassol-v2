class AddColumnPriceItemIdToDeliveryItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :delivery_items, :price_item, foreign_key: true
  end
end
