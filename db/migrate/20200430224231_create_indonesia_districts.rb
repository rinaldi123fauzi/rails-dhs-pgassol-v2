class CreateIndonesiaDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :indonesia_districts do |t|
      t.integer :city_id
      t.string :name

      t.timestamps
    end
    execute <<-SQL
      ALTER TABLE indonesia_districts
        ADD CONSTRAINT indonesia_cities
        FOREIGN KEY (city_id)
        REFERENCES indonesia_cities(id)
    SQL
  end
end
