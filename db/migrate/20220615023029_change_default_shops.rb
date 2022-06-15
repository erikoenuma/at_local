class ChangeDefaultShops < ActiveRecord::Migration[6.0]
  def change
    change_column_default :shops, :private, from: false, to: true
  end
end
