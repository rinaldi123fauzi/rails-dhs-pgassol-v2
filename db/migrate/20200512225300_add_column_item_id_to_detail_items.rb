class AddColumnItemIdToDetailItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :detail_items, :item, foreign_key: true
  end
end
