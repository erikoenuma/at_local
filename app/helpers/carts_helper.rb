module CartsHelper

    # カートに入っているアイテムごとの個数
    def item_counts(cart, item)
        return cart.items.where(id: item.id).count
    end

    # cart.itemsの配列から重複を削除
    def unique_items(cart)
        return cart.items.uniq
    end
end
