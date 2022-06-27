class AddPlaceUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :place, foreign_key: true, null: true
  end
end
