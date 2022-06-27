class AddShoppingStreetIdToShops < ActiveRecord::Migration[6.0]
  def change
    add_reference :shops, :shopping_street, foreign_key: true
  end
end
