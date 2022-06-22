module CartsHelper

    # カートに入っているアイテムごとの個数
    def item_counts(cart, item)
        return cart.items.where(id: item.id).count
    end

end
