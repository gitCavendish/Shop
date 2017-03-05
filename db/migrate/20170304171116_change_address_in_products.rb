class ChangeAddressInProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :address
    remove_column :products, :latitude
    remove_column :products, :longitude
    add_column :products, :location_id, :integer
  end
end
