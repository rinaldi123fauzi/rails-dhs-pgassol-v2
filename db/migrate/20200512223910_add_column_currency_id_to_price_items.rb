class AddColumnCurrencyIdToPriceItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :price_items, :currency, foreign_key: true
  end
end
