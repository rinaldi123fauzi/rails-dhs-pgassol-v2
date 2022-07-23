class ChangeReferencesOnProducts < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :products, :disiplines
    add_foreign_key :products,:disiplines, on_delete: :cascade
  end
end
