class CreateItemPriceLetters < ActiveRecord::Migration[5.0]
  def change
    create_table :item_price_letters do |t|
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
