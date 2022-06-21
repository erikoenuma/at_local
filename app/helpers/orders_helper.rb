module OrdersHelper

    # 合計金額
    def calculate_total_price(items)
        items.map { |item| item.price }.sum
    end

    # 数量
    def total_amount(item, cart)
        cart.items.where(id: item.id).length
    end

    # 商品ごとの小計
    def calculate_subtotal_price(item, cart)
        cart.items.where(id: item.id).map { |item| item.price }.sum
    end
end
