class AddFacilitiesToHotel < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :refrigetator, :boolean, default: false
    add_column :hotels, :tv, :boolean, default: false
    add_column :hotels, :geyser, :boolean, default: false
    add_column :hotels, :heater, :boolean, default: false
    add_column :hotels, :ac, :boolean, default: false
  end
end
