class ChangeProductCarbolevelColumnToString < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :carbolevel, :string
  end
end
