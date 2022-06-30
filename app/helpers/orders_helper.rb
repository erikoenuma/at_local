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

end
