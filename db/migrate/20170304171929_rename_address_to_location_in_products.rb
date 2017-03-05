class RenameAddressToLocationInProducts < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :address, :location_id
  end
end
