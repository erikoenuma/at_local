class Order < ApplicationRecord
  belongs_to :user
  belongs_to :shop

  enum payment_method: [ :local ]
  enum delivery_method: [ :takeout, :delivery ]

  validates :payment_method, presence: true
  validates :total_price, presence: true, numericality: { in:1..999999 }
  validates :memo, length: {maximum: 255}
  validates :delivery_method, presence: true
  validates :deliver_date, presence: true

end
