class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.references :disipline, foreign_key: true
      t.string :name_type

      t.timestamps
    end
  end
end
