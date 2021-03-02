class Boat < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
  belongs_to :owner, class_name: "User"

  validates :title, :category, :address, :price_per_day, :description, presence: true

  CATEGORY = ["Bateau à moteur", "Voilier"]
  validates :category, inclusion: { in: CATEGORY }
end
