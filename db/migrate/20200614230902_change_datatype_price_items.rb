class ChangeDatatypePriceItems < ActiveRecord::Migration[5.0]
  def change
    change_column :price_items, :vat, :string
  end
end
