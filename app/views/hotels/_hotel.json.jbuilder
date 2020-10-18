json.extract! hotel, :id, :name, :location, :details, :price, :single_bed_room, :double_bed_room, :suite_room, :dormitory, :latitude, :longitude, :user_id, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
