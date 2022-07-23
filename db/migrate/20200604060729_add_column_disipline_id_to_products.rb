class AddColumnDisiplineIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :disipline, foreign_key: true
  end
end
