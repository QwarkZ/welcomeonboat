class ChangeForeignKeysforBookings < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :user_id, :renter_id
  end
end
