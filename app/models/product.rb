class Product < ApplicationRecord
mount_uploader :image, AvatarUploader
has_many :photos
has_many :comments
accepts_nested_attributes_for :photos

end
