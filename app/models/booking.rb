class Booking < ApplicationRecord
  belongs_to :renter, class_name: "User"
  belongs_to :boats

  validates :start_date, :end_date, presence: true
end
