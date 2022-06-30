class AddTelephoneNumberShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :telephone_number, :string
  end
end
