class Salon < ApplicationRecord
  has_many :operators
  belongs_to :owner, foreign_key: :owner_id, class_name: SalonOwner
end
