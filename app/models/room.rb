class Room < ApplicationRecord
  has_many :bookings

  validates :room_type, presence: true
  validates :room_type, uniqueness: true
  


end
