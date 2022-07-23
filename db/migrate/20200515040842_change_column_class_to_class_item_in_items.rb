class ChangeColumnClassToClassItemInItems < ActiveRecord::Migration[5.0]
  def change
    rename_column :items, :class, :class_item
  end
end
