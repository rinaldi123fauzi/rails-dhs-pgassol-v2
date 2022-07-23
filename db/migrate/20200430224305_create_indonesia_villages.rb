class CreateIndonesiaVillages < ActiveRecord::Migration[5.0]
  def change
    create_table :indonesia_villages do |t|
      t.integer :district_id
      t.string :name

      t.timestamps
    end
    execute <<-SQL
      ALTER TABLE indonesia_villages
        ADD CONSTRAINT indonesia_districts
        FOREIGN KEY (district_id)
        REFERENCES indonesia_districts(id)
    SQL
  end
end
