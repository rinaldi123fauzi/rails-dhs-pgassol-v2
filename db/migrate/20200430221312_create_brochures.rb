class CreateBrochures < ActiveRecord::Migration[5.0]
  def change
    create_table :brochures do |t|
      t.string :brochure_title
      t.string :brochure_path

      t.timestamps
    end
  end
end
