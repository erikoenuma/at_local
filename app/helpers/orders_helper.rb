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

    # キャンセル可能かどうか
    def cancelable?(order)
        case order.shop.cancelable_days_before   
        # キャンセル不可
        when 8 then
            return false
        else
            order.status != ('canceled' || 'completed') &&
            # 店舗側はいつでもキャンセルできる
            (shop_user?(current_user) ||
            Date.today - order.shop.cancelable_days_before >= Time.current.to_date)
        end
    end

end
