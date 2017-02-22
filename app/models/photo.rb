class Photo < ApplicationRecord
  mount_uploader :avatar, AvatartUploader
  belongs_to :product
end
