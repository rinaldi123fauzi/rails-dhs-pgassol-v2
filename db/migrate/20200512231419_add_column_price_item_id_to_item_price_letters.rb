class AddColumnPriceItemIdToItemPriceLetters < ActiveRecord::Migration[5.0]
  def change
    add_reference :item_price_letters, :price_item, foreign_key: true
  end
end
