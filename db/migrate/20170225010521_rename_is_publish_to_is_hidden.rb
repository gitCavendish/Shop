class RenameIsPublishToIsHidden < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :is_publish, :is_hidden
  end
end
