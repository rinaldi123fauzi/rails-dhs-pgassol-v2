class ChangeDataTypeInItems < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :scope_of_supply, :string
  end
end
