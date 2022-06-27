class CreateShoppingStreets < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_streets do |t|
      t.references :place, null: false, foreign_key: true
      t.string :name, null: false
    end
  end
end
