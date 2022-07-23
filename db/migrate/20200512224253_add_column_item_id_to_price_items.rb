class AddColumnItemIdToPriceItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :price_items, :item, foreign_key: true
  end
end
