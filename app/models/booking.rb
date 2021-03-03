class Booking < ApplicationRecord
  belongs_to :renter, class_name: "User"
  belongs_to :boat

  validates :start_date, :end_date, :boat, presence: true

  STATUSES = ["En attente", "Validée", "Refusée"]
  validates :booking_status, inclusion: { in: STATUSES }
end
