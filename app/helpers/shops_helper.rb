module ShopsHelper

    # 特売商品の中間テーブルをアイテムの配列にする
    def sale_items(sale_items)
        sale_items.map do |sale_item|
            sale_item.shop.items.find(sale_item.item_id)
        end
    end

end
