class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user    , null: false, foreign_key: true
      t.string :guest_name  , null: false
      t.integer :no_of_guest, null: false
      t.integer :room       , null: false
      t.date :check_in_date , null: false
      t.date :check_out_date, null: false

      t.timestamps
    end
  end
end
