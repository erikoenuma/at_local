class Order < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  has_many :order_items, dependent: :destroy
  has_many :items, through: :order_items
  has_many :messages, dependent: :destroy
  has_many :notifications, dependent: :destroy

  enum payment_method: [ :local ]
  enum delivery_method: [ :takeout, :delivery ]
  # 今現金払いしかないのでpaidは実装してない
  enum status: [ :not_paid, :yet_sent, :sent, :delivered, :completed, :canceled ]

  validates :payment_method, presence: true
  validates :total_price, presence: true, numericality: { in:1..999999 }
  validates :memo, length: {maximum: 255}
  validates :delivery_method, presence: true
  validates :deliver_date, presence: true
  validates :name, presence: true, length: { maximum: 30 }
  validates :status, presence: true
  validates :address, length: { maximum: 255 }
  validate :deliver_date_check, on: :create
  validate :address_check

  def deliver_date_check
    errors.add(:deliver_date, "受取日は本日以降の日付けを設定してください") unless
    self.deliver_date > Time.now
  end

  def address_check
    if self.delivery_method == 'delivery' && self.address.blank?
      errors.add(:address, "配送先の住所を記入してください")
    end
  end

  # order.itemsの配列から重複を削除
  def unique_items
    return self.items.uniq
  end

  # 今日の注文をソートする
  def today?
    self.deliver_date.year == Date.today.year &&
    self.deliver_date.month == Date.today.month &&
    self.deliver_date.day == Date.today.day
  end
end
