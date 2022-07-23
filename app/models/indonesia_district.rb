class IndonesiaDistrict < ApplicationRecord
  has_many :indonesia_village
  belongs_to :indonesia_city
end
