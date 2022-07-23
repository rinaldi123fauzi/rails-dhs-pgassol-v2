class CreateIndonesiaCities < ActiveRecord::Migration[5.0]
  def change
    create_table :indonesia_cities do |t|
      t.integer :province_id
      t.string :name

      t.timestamps
    end
    execute <<-SQL
      ALTER TABLE indonesia_cities
        ADD CONSTRAINT indonesia_provinces
        FOREIGN KEY (province_id)
        REFERENCES indonesia_provinces(id)
    SQL
  end
end
