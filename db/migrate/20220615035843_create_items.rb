class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :shop, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :price, null: false
      t.string :description, null: false
      t.boolean :private, null: false, default: true
      t.integer :counts, null: false

      t.timestamps
    end
  end
end
