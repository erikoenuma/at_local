class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.integer :sender_id, null: false
      t.integer :receiver_id, null: false
      t.references :order, null: false, foreign_key: true
      t.integer :action, null: false
      t.boolean :checked, null: false, default: false

      t.timestamps
    end
  end
end
