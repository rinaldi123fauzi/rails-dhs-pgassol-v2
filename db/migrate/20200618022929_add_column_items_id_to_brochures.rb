class AddColumnItemsIdToBrochures < ActiveRecord::Migration[5.0]
  def change
    add_reference :brochures, :item, foreign_key: true
  end
end
