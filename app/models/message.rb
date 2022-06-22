class Message < ApplicationRecord
  belongs_to :order

  enum sender: [ :customer, :shop ]

  validates :order_id, presence: true
  validates :sender, presence: true
  validates :comments, presence: true, length: { maximum: 255 }

end
