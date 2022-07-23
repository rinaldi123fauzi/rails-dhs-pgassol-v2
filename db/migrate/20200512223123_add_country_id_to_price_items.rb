class AddCountryIdToPriceItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :price_items, :country, foreign_key: true
  end
end
