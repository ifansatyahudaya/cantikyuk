class Salon < ApplicationRecord
  has_many :operators
  has_many :salon_images
  belongs_to :owner, foreign_key: :owner_id, class_name: SalonOwner
end
