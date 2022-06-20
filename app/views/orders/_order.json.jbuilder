json.extract! order, :id, :user_id, :shop_id, :payment_method, :total_price, :memo, :delivery_method, :deliver_date, :created_at, :updated_at
json.url order_url(order, format: :json)
