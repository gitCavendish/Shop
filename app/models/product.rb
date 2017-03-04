class Product < ApplicationRecord
  mount_uploader :image, AvatarUploader
  has_many :photos
  has_many :comments
  accepts_nested_attributes_for :photos

  geocoded_by :address
  after_validation :geocode

  belongs_to :location
end
