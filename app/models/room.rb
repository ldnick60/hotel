class Room < ApplicationRecord
  has_many :bookings
  validates :type, presence: true
  validates :type, uniqueness: true
end
