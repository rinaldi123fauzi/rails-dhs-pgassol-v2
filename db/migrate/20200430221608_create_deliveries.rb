class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.string :delivery_place
      t.string :delivery_inconterm
      t.date :delivery_date
      t.integer :delivery_vat
      t.string :delivery_term_payment
      t.string :delivery_note

      t.timestamps
    end
  end
end
