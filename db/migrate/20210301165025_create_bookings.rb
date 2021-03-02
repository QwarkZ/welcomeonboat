class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :boat_id
      t.date :start_date
      t.date :end_date
      t.string :booking_status

      t.timestamps
    end
  end
end
