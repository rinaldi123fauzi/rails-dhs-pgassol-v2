class CreateReferensiItems < ActiveRecord::Migration[5.0]
  def change
    create_table :referensi_items do |t|
      t.string :name

      t.timestamps
    end
  end
end
