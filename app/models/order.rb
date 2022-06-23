class Order < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  has_many :order_items, dependent: :destroy
  has_many :items, through: :order_items
  has_many :messages, dependent: :destroy

  enum payment_method: [ :local ]
  enum delivery_method: [ :takeout, :delivery ]
  enum status: [ :not_paid, :yet_sent, :sent, :delivered, :completed, :canceled]

  validates :payment_method, presence: true
  validates :total_price, presence: true, numericality: { in:1..999999 }
  validates :memo, length: {maximum: 255}
  validates :delivery_method, presence: true
  validates :deliver_date, presence: true
  validates :name, presence: true, length: { maximum: 30 }
  validates :status, presence: true
  validate :deliver_date_check

  def deliver_date_check
    errors.add(:deliver_date, "受取日は本日以降の日付けを設定してください") unless
    self.deliver_date > Time.now
  end

  # order.itemsの配列から重複を削除
  def unique_items
    return self.items.uniq
  end

end
