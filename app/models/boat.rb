class Boat < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
end
