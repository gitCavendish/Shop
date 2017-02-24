class AddOthercolumnToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :category, :string
    add_column :products, :is_publish, :boolean
    add_column :products, :is_recommend, :boolean
    add_column :products, :carbolevel, :integer
  end
end
