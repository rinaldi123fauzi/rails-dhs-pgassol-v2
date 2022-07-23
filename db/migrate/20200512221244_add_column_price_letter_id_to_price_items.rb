class AddColumnPriceLetterIdToPriceItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :price_items, :price_letter, foreign_key: true
  end
end
