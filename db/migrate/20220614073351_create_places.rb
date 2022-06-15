class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :region, null: false
      t.string :prefecture, null: false
      t.string :area, null: false
    end
  end
end
