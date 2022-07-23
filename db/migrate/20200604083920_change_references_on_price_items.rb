class ChangeReferencesOnPriceItems < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :price_items, :currencies
    remove_foreign_key :price_items, :vendors
    remove_foreign_key :price_items, :items
    remove_foreign_key :price_items, :price_letters
    remove_foreign_key :price_items, :countries
    remove_foreign_key :price_items, :referensi_items
    add_foreign_key :price_items,:currencies, on_delete: :cascade
    add_foreign_key :price_items,:vendors, on_delete: :cascade
    add_foreign_key :price_items,:items, on_delete: :cascade
    add_foreign_key :price_items,:price_letters, on_delete: :cascade
    add_foreign_key :price_items,:countries, on_delete: :cascade
    add_foreign_key :price_items,:referensi_items, on_delete: :cascade
  end
end
