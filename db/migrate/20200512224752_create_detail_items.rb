class CreateDetailItems < ActiveRecord::Migration[5.0]
  def change
    create_table :detail_items do |t|
      t.references :unit, foreign_key: true
      t.string :dimension2
      t.string :dimension3
      t.string :dft
      t.string :vol_solid
      t.string :spreading_rate

      t.timestamps
    end
  end
end
