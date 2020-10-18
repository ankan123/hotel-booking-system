class AddHotelIdToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :hotel_id, :integer
  end
end
