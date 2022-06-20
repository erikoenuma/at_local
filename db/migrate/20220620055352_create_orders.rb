class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true
      t.integer :payment_method, null: false, default: 0
      t.integer :total_price, null: false
      t.string :memo, null: false
      t.integer :delivery_method, null: false, default: 0
      t.datetime :deliver_date, null: false

      t.timestamps
    end
  end
end
