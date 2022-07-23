class IndonesiaCity < ApplicationRecord
  has_many :indonesia_district
  belongs_to :indonesia_province
end
