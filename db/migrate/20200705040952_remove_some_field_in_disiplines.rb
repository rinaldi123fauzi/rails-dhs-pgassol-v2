class RemoveSomeFieldInDisiplines < ActiveRecord::Migration[5.0]
  def change
    remove_column :disiplines, :vendor_id, :integer
    remove_column :disiplines, :parent_id, :integer
    remove_column :disiplines, :in_order, :integer
    remove_column :disiplines, :side_logo, :string
  end
end
