class ChangeDefaultItem < ActiveRecord::Migration[6.0]
  def change
    change_column_default :items, :counts, from: nil, to: 0
  end
end
