class AddColumnTypeIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :type, foreign_key: true
  end
end
