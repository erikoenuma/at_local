class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :order, null: false, foreign_key: true
      t.integer :sender, null: false
      t.string :comments, null: false

      t.timestamps
    end
  end
end
