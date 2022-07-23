class AddColumnDeliveryPointToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :delivery_point, :string
  end
end
