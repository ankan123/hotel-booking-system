class AddRoomtypesToHotel < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :single_bed_room, :integer
    add_column :hotels, :double_bed_room, :integer
    add_column :hotels, :suite_room, :integer
    add_column :hotels, :dormitory, :integer
  end
end
