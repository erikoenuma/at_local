class Address < ApplicationRecord
  belongs_to :user
  validates :zipcode, presence: true, length: { maximum:8, minimum:7 }
  validates :address, presence: true, length: { maximum:255 }
  validates :building_name, length: { maximum:255 }
  validates :name, presence: true, length: { maximum: 30 }
end
