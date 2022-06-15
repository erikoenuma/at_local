class AddReferencesShop < ActiveRecord::Migration[6.0]
  def change
    add_reference :shops, :place, foreign_key: true
  end
end
