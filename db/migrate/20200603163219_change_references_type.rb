class ChangeReferencesType < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :items, :products
    remove_foreign_key :items, :brands
    remove_foreign_key :items, :brochures
    remove_foreign_key :items, :disiplines
    remove_foreign_key :items, :types
    remove_foreign_key :types, :products
    remove_foreign_key :types, :disiplines
    remove_foreign_key :detail_items, :units
    remove_foreign_key :detail_items, :items

    add_foreign_key :items,:products, on_delete: :cascade
    add_foreign_key :items,:brands, on_delete: :cascade
    add_foreign_key :items,:brochures, on_delete: :cascade
    add_foreign_key :items,:disiplines, on_delete: :cascade
    add_foreign_key :items,:types, on_delete: :cascade
    add_foreign_key :types,:products, on_delete: :cascade
    add_foreign_key :types,:disiplines, on_delete: :cascade
    add_foreign_key :detail_items,:units, on_delete: :cascade
    add_foreign_key :detail_items,:items, on_delete: :cascade
  end
end
