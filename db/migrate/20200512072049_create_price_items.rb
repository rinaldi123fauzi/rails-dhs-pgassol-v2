class CreatePriceItems < ActiveRecord::Migration[5.0]
  def change
    create_table :price_items do |t|
      t.string :place
      t.string :project_name
      t.string :incoterm
      t.date :date
      t.integer :vat
      t.text :term_payment
      t.text :delivery_time
      t.float :price
      t.integer :status
      t.string :note
      t.integer :last

      t.timestamps
    end
  end
end
