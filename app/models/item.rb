class Item < ApplicationRecord
  belongs_to :shop

  validates :name, presence: true, length: { maximum: 30 }
  validates :price, presence: true, numericality: { in:1..999999 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :private, inclusion: {in: [true, false]}
  validates :counts, presence: true, numericality: { in:0..9999 }

  has_one_attached :image

end
