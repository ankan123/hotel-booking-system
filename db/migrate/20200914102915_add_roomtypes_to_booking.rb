class AddRoomtypesToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :single_bed_room, :integer, :default => 0
    add_column :bookings, :double_bed_room, :integer, :default => 0
    add_column :bookings, :suite_room, :integer, :default => 0
    add_column :bookings, :dormitory, :integer, :default => 0
    remove_column :bookings, :room, :integer
  end
end
