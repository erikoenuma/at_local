class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :address
      t.string :access
      t.string :introduction
      t.integer :cancelable_days_before
      t.boolean :private, null: false, default: false

      t.timestamps
    end
  end
end
