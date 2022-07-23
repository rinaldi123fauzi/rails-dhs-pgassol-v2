class Type < ApplicationRecord
  belongs_to :disipline
  belongs_to :product
  has_many :item
end
