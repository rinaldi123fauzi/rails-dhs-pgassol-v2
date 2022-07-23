class CreateDisiplines < ActiveRecord::Migration[5.0]
  def change
    create_table :disiplines do |t|
      t.string :name
      t.integer :vendor_id
      t.string :category
      t.integer :parent_id
      t.integer :in_order
      t.string :logo
      t.string :side_logo

      t.timestamps
    end
    execute <<-SQL
      ALTER TABLE disiplines
        ADD CONSTRAINT vendors
        FOREIGN KEY (vendor_id)
        REFERENCES vendors(id)
    SQL
  end
end
