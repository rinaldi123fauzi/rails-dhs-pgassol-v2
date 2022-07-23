class Disipline < ApplicationRecord
  has_many :item
  has_many :type
  has_many :product
end
