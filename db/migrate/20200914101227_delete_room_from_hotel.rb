class DeleteRoomFromHotel < ActiveRecord::Migration[6.0]
  def change
    remove_column :hotels, :room, :integer
  end
end
