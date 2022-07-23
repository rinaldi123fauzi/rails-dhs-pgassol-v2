class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :country_id
      t.string :business_category
      t.string :address
      t.string :website
      t.string :email
      t.string :phone_number
      t.string :pic1
      t.string :position1
      t.string :email1
      t.string :phone1
      t.string :pic2
      t.string :position2
      t.string :email2
      t.string :phone2

      t.timestamps
    end
    execute <<-SQL
      ALTER TABLE vendors
        ADD CONSTRAINT countries
        FOREIGN KEY (country_id)
        REFERENCES countries(country_id)
    SQL
  end
end
