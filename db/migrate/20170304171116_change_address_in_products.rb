class ChangeAddressInProducts < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :address, :integer
    remove_column :products, :latitude
    remove_column :products, :longitude
  end
end
