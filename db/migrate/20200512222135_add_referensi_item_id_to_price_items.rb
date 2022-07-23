class AddReferensiItemIdToPriceItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :price_items, :referensi_item, foreign_key: true
  end
end
