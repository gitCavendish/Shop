class Product < ApplicationRecord
  mount_uploader :image, AvatarUploader
  has_many :photos
  has_many :comments
  accepts_nested_attributes_for :photos


  def increment(by = 1)
    self.views ||= 0
    self.views += by
    self.save
  end
end
