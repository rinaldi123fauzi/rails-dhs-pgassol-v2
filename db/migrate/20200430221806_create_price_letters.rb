class CreatePriceLetters < ActiveRecord::Migration[5.0]
  def change
    create_table :price_letters do |t|
      t.string :price_letter_title
      t.string :price_letter_path

      t.timestamps
    end
  end
end
