class ShoppingStreet < ApplicationRecord
  has_many :shops
  belongs_to :place
end
