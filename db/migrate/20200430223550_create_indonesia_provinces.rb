class CreateIndonesiaProvinces < ActiveRecord::Migration[5.0]
  def change
    create_table :indonesia_provinces do |t|
      t.string :name

      t.timestamps
    end
  end
end
