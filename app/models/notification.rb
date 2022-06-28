class Notification < ApplicationRecord
  belongs_to :order

  enum action: [ :message, :ordered, :status_changed, :canceled, :completed ]

  validates :order_id, presence: true
  validates :sender_id, presence: true
  validates :receiver_id, presence: true
  validates :action, presence: true
  validates :checked, inclusion: {in: [true, false]}

  def sender
    User.find(sender_id)
  end

  def receiver
    User.find(receiver_id)
  end

  def contents

    case self.action
    when 'message' then
      return "#{sender.name}からメッセージを受信しました"

    when 'ordered' then
      return "#{sender.name}が商品を注文しました"
    
    when 'status_changed' then
      return "#{sender.name}がステータスを#{self.order.status_i18n}に変更しました"

    when 'canceled' then 
      return "#{sender.name}が注文をキャンセルしました"

    when 'completed' then
      return "#{sender.name}が取引を完了しました"

    end
  end

end
