module OrdersHelper

    # 合計金額
    def calculate_total_price(items)
        items.sum(:price)
    end

    # 数量
    def total_amount(item, cart)
        cart.items.where(id: item.id).length
    end

    # 商品ごとの小計
    def calculate_subtotal_price(item, cart)
        cart.items.where(id: item.id).map { |item| item.price }.sum
    end

    # 日にちごとの合計売上
    def calculate_daily_total_price(orders)
        # キャンセルされた注文を除く
        items = orders.select{|p| p.status != 'canceled' }.map{|p| p.items }
        result = 0
        items.each do |item|
            result += calculate_total_price(item)
        end
        return result
    end

    # キャンセル可能かどうか
    def cancelable?(order)
        case order.shop.cancelable_days_before   
        # キャンセル不可
        when 'not_allowed' then
            return false
        else
            ((order.status == 'not_paid') || (order.status == 'yet_sent' )) &&
            # 店舗側はいつでもキャンセルできる
            (shop_user?(current_user) ||
            # キャンセル可能日に準ずる
            Date.today - Shop.cancelable_days_befores[order.shop.cancelable_days_before] >= Time.current.to_date)
        end
    end

    # 取引完了可能かどうか
    def completable?(order)
        (order.status == 'delivered') || (order.status == 'sent')
    end

    # 住所選択の中身
    def addresses_array(addresses)
        addresses.map do |address|
            addressString = address.zipcode + ' ' + address.address + ' ' + address.building_name + ' ' + address.name + '様'
            return [addressString, addressString]
        end
    end

    def complete_btn(delivery_method)
        case delivery_method
        when 'takeout' then
            return '受け渡し済みにする'
        when 'delivery' then
            return '配送済みにする'
        end
    end

    def complete_status(delivery_method)
        case delivery_method
        when 'takeout' then
            return 'delivered'
        when 'delivery' then
            return 'sent'
        end
    end

    def today_order_bg(order)
        # 通知があるやつ
        if order.notifications.where(receiver_id:current_user.id, checked: false).length > 0
            return 'bg-warning'
        # 何もアクションする必要がないもの
        elsif (order.status == 'delivered') || (order.status == 'sent') || (order.status == 'canceled') || (order.status == 'completed')
            return 'bg-secondary'
        else
            return nil    
        end
    end

    def unchecked_notifications(order)
        order.notifications.where(receiver_id: current_user.id, checked: false)
    end

end
