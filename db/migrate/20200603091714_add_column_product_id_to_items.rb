class AddColumnProductIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :product, foreign_key: true
  end
end
