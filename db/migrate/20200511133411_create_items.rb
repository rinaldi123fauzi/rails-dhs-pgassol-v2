class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :brochure, foreign_key: true
      t.references :brand, foreign_key: true
      t.references :disipline, foreign_key: true
      t.string :size
      t.string :class
      t.string :dimension
      t.text :general_spec
      t.integer :scope_of_supply
      t.string :others
      t.text :note

      t.timestamps
    end
  end
end
