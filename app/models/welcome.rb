class Welcome < ApplicationRecord
  has_many :products
  has_many :photos, through: :product 
end
