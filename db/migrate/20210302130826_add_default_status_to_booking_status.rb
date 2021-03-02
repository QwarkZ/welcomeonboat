class AddDefaultStatusToBookingStatus < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :booking_status, :string, :default => "En attente"
  end
end
