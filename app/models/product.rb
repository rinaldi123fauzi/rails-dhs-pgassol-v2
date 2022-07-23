class Product < ApplicationRecord
  has_many :item
  has_many :type
  belongs_to :disipline
end
