class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  has_many :cart_items, dependent: :destroy
  has_many :items, through: :cart_items

    # cart.itemsの配列から重複を削除
    def unique_items
      return self.items.uniq
    end
end
