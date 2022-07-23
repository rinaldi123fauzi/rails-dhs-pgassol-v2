class AddColumnVendorIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :vendor, foreign_key: true, on_delete: :cascade
  end
end
