class CreateSaleItems < ActiveRecord::Migration[6.0]
  def change
    create_table :sale_items do |t|
      t.references :item, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
