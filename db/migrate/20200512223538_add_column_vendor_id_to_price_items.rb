class AddColumnVendorIdToPriceItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :price_items, :vendor, foreign_key: true
  end
end
