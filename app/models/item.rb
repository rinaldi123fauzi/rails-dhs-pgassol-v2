class Item < ApplicationRecord
  attr_accessor :unit_id, :currency_id, :country_id,
                :project_name, :delivery_time, :incoterm, :vat,
                :term_payment, :price, :date

  belongs_to :brand
  belongs_to :disipline
  belongs_to :type
  belongs_to :product
  belongs_to :vendor

  has_many :brochure
  has_many :price_item
  has_many :item_price_letter
  has_many :detail_item

  after_create :detail_item, if: :country_id
  after_create :price_item, if: :country_id

  private
  def detail_item
    DetailItem.create!(item_id: self.id, unit_id: unit_id)
  end

  def price_item
    PriceItem.create!(item_id: self.id, country_id: country_id, vendor_id: self.vendor_id,
                      currency_id: currency_id, note: self.note, project_name: project_name,
                      delivery_time: delivery_time, incoterm: incoterm, vat: vat,
                      term_payment: term_payment, price: price, date: date)
  end

end
