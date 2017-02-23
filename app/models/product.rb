class Product < ApplicationRecord
mount_uploader :image, AvatarUploader
has_many :photos
accepts_nested_attributes_for :photos
end
