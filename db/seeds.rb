# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

   User.create(id: 1, username: 'admin', email: "admin@gmail.com", password: "123456", number: 1234567899, admin: true)
   User.create(id: 2, username: 'Luke', email: "luke.luke@gmail.com", password: "ank123", number: 1234567899)
   User.create(id: 3, username: 'harry', email: "harry.harry@gmail.com", password: "ank123", number: 1234567899)
   User.create(id: 4, username: 'sam', email: "sam.sam@gmail.com", password: "ank123", number: 1234567899)
   User.create(id: 5, username: 'tom', email: "tom.tom@gmail.com", password: "ank123", number: 1234567899)
   User.create(id: 6, username: 'suresh', email: "suresh.suresh@gmail.com", password: "ank123", number: 1234567899)
   User.create(id: 7, username: 'ramesh', email: "ramesh.ramesh@gmail.com", password: "ank123", number: 1234567899)
   User.create(id: 8, username: 'mohit', email: "mohit.mohit@gmail.com", password: "ank123", number: 1234567899)
   User.create(id: 9, username: 'raju', email: "raju.raju@gmail.com", password: "ank123", number: 1234567899)
   User.create(id: 10, username: 'lokesh', email: "lokesh.lokesh@gmail.com", password: "ank123", number: 1234567899)
   
   hotel1 = Hotel.new(id: 1, name: "Rockford Resort", location: "Kalyani Nagar,Pune,Maharashtra", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 1299, user_id:1, single_bed_room: 20, double_bed_room: 10, suite_room: 10, dormitory: 7, refrigetator: true, tv: true, geyser: true, heater: false, ac: false)
   hotel1.images.attach(io: File.open('app/assets/images/hotel10.jpg'), filename: 'hotel1.jpg', content_type: 'image/jpeg' )
   hotel1.save!

   hotel2 = Hotel.new(id: 2, name: "Hotel Picasso", location: "naraina Vihar, Delhi", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 2299, user_id:1, single_bed_room: 15, double_bed_room: 10, suite_room: 12, dormitory: 7, refrigetator: true, tv: true, geyser: true, heater: true, ac: false)
   hotel2.images.attach(io: File.open('app/assets/images/hotel6.jpg'), filename: 'hotel6.jpg', content_type: 'image/jpeg' )
   hotel2.save!

   hotel3 = Hotel.new(id: 3, name: "radisson plaza", location: "Mahipalpur, New Delhi", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 1799, user_id:1, single_bed_room: 22, double_bed_room: 18, suite_room: 12, dormitory: 10, refrigetator: true, tv: true, geyser: true, heater: true, ac: true)
   hotel3.images.attach(io: File.open('app/assets/images/ffht.jpg'), filename: 'hotel10.jpg', content_type: 'image/jpeg' )
   hotel3.save!

   hotel4 = Hotel.new(id: 4, name: "Hotel Royal Haveli", location: "Pichola, Udaipur, Rajasthan", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 1799, user_id:1, single_bed_room: 22, double_bed_room: 18, suite_room: 12, dormitory: 10, refrigetator: true, tv: false, geyser: true, heater: false, ac: false)
   hotel4.images.attach(io: File.open('app/assets/images/hotel11.jpg'), filename: 'hotel11.jpg', content_type: 'image/jpeg' )
   hotel4.save!

   hotel5 = Hotel.new(id: 5, name: "resistance resort", location: "Jaisalmer, Rajasthan", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 1999, user_id:1, single_bed_room: 17, double_bed_room: 18, suite_room: 13, dormitory: 10, refrigetator: true, tv: true, geyser: true, heater: false, ac: false)
   hotel5.images.attach(io: File.open('app/assets/images/hotel13.jpg'), filename: 'hotel13.jpg', content_type: 'image/jpeg' )
   hotel5.save!

   hotel6 = Hotel.new(id: 6, name: "Pinnacle Resort", location: "Kalyani Nagar,Pune,Maharashtra", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 1399, user_id:1, single_bed_room: 24, double_bed_room: 15, suite_room: 8, dormitory: 10, refrigetator: true, tv: true, geyser: true, heater: false, ac: false)
   hotel6.images.attach(io: File.open('app/assets/images/hotel4.jpg'), filename: 'hotel4.jpg', content_type: 'image/jpeg' )
   hotel6.save!

   hotel7 = Hotel.new(id: 7, name: "Garden Hotel", location: "Khandala, Pune, Maharashtra", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 1199, user_id:1, single_bed_room: 20, double_bed_room: 20, suite_room: 8, dormitory: 10, refrigetator: true, tv: true, geyser: true, heater: true, ac: true)
   hotel7.images.attach(io: File.open('app/assets/images/hotel5.jpg'), filename: 'hotel5.jpg', content_type: 'image/jpeg' )
   hotel7.save!

   hotel8 = Hotel.new(id: 8, name: "Happy Homestay", location: "Kalyani Nagar,Pune,Maharashtr", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 1199, user_id:1, single_bed_room: 20, double_bed_room: 20, suite_room: 8, dormitory: 10, refrigetator: true, tv: true, geyser: true, heater: true, ac: true)
   hotel8.images.attach(io: File.open('app/assets/images/hotel6.jpg'), filename: 'hotel6.jpg', content_type: 'image/jpeg' )
   hotel8.save!

   hotel9 = Hotel.new(id: 9, name: "The Altira Hotel", location: "Marathahalli,Bengaluru,Karnataka", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 1999, user_id:1, single_bed_room: 17, double_bed_room: 20, suite_room: 8, dormitory: 9, refrigetator: true, tv: true, geyser: true, heater: true, ac: true)
   hotel9.images.attach(io: File.open('app/assets/images/hotel7.jpg'), filename: 'hotel7.jpg', content_type: 'image/jpeg' )
   hotel9.save!

   hotel10 = Hotel.new(id: 10, name: "hotel sunshine", location: "telco colony,jamshedpur ,jharkhand", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 1999, user_id:1, single_bed_room: 14, double_bed_room: 13, suite_room: 5, dormitory: 9, refrigetator: true, tv: true, geyser: true, heater: true, ac: true)
   hotel10.images.attach(io: File.open('app/assets/images/hotel8.jpg'), filename: 'hotel8.jpg', content_type: 'image/jpeg' )
   hotel10.save!

   hotel10 = Hotel.new(id: 11, name: "Sunset Resort", location: "Khandala, Pune, Maharashtra", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 899, user_id:1, single_bed_room: 14, double_bed_room: 13, suite_room: 5, dormitory: 9, refrigetator: true, tv: true, geyser: true, heater: true, ac: true)
   hotel10.images.attach(io: File.open('app/assets/images/hotel2.jpg'), filename: 'hotel2.jpg', content_type: 'image/jpeg' )
   hotel10.save!

   hotel11 = Hotel.new(id: 12, name: "hayat hotel", location: "Marathahalli,Bengaluru,Karnataka", details: "Each air-conditioned villa has spacious outdoor areas and a private spa treatment area. They come with a day bed. Private bathroom includes luxurious bath amenities a separate bathtub and shower. A 42-inch high definition TV, espresso coffee maker and in-room
      safe is provided.Guests can swim in the outdoor pool and experience a variety of body treatments during their stay. Hilton Shillim Estate Retreat also has a fitness room. The hotel also offers pottery and cooking classes, mountain biking and other day activities.Terrazzo restaurant serves Indian and International cuisines and Mountain Bar & Bistro offers pasta and freshly stone-baked pizza. The Green Table is a spa restaurant that serves Mediterranean and Indian delights. Beverages can be relished at The Valley Bar while The Reserve has an impressive wine cellar. Tea House serves natural tea and interaction with the Chef can be had at the Chef's Table available at prior reservation only.", price: 899, user_id:1, single_bed_room: 18, double_bed_room: 22, suite_room: 8, dormitory: 9, refrigetator: true, tv: true, geyser: true, heater: true, ac: true)
   hotel11.images.attach(io: File.open('app/assets/images/hotel3.jpg'), filename: 'hotel3.jpg', content_type: 'image/jpeg' )
   hotel11.save!

   Booking.create(user_id: 2, guest_name: "john doe", no_of_guest: 5, check_in_date: "2020-10-16", check_out_date: "2020-10-19",  hotel_id: 4, single_bed_room: 2, double_bed_room: 1, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 2, guest_name: "Bill", no_of_guest: 6, check_in_date: "2020-10-20", check_out_date: "2020-10-25",  hotel_id: 3, single_bed_room: 2, double_bed_room: 2, suite_room: 0, dormitory: 0)
   Booking.create(user_id: 2, guest_name: "matt hardy", no_of_guest: 8, check_in_date: "2020-10-16", check_out_date: "2020-10-18",  hotel_id: 3, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 1, accepted: true)
   Booking.create(user_id: 2, guest_name: "jeff hardy", no_of_guest: 4, check_in_date: "2020-11-10", check_out_date: "2020-11-19",  hotel_id: 4, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 0)
   Booking.create(user_id: 2, guest_name: "buzz hardy", no_of_guest: 4, check_in_date: "2020-10-22", check_out_date: "2020-10-27",  hotel_id: 1, single_bed_room: 2, double_bed_room: 2, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 2, guest_name: "jeff", no_of_guest: 4, check_in_date: "2020-10-22", check_out_date: "2020-10-28",  hotel_id: 1, single_bed_room: 2, double_bed_room: 2, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 2, guest_name: "james", no_of_guest: 4, check_in_date: "2020-10-23", check_out_date: "2020-10-27",  hotel_id: 1, single_bed_room: 2, double_bed_room: 2, suite_room: 0, dormitory: 0, accepted: true)
   
   Booking.create(user_id: 3, guest_name: "rohit", no_of_guest: 5, check_in_date: "2020-10-16", check_out_date: "2020-10-19",  hotel_id: 5, single_bed_room: 2, double_bed_room: 1, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 3, guest_name: "abdul", no_of_guest: 6, check_in_date: "2020-10-20", check_out_date: "2020-10-25",  hotel_id: 6, single_bed_room: 2, double_bed_room: 2, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 3, guest_name: "sahil singh", no_of_guest: 8, check_in_date: "2020-10-16", check_out_date: "2020-10-18",  hotel_id: 7, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 1)
   Booking.create(user_id: 3, guest_name: "shyam kumar", no_of_guest: 4, check_in_date: "2020-11-10", check_out_date: "2020-11-19",  hotel_id: 8, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 0)
   
   Booking.create(user_id: 4, guest_name: "krishna", no_of_guest: 5, check_in_date: "2020-10-16", check_out_date: "2020-10-19",  hotel_id: 9, single_bed_room: 2, double_bed_room: 1, suite_room: 0, dormitory: 0)
   Booking.create(user_id: 4, guest_name: "Sonu", no_of_guest: 6, check_in_date: "2020-10-20", check_out_date: "2020-10-25",  hotel_id: 10, single_bed_room: 2, double_bed_room: 2, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 4, guest_name: "abhijeet", no_of_guest: 8, check_in_date: "2020-10-16", check_out_date: "2020-10-18",  hotel_id: 11, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 1)
   Booking.create(user_id: 4, guest_name: "sumesh", no_of_guest: 4, check_in_date: "2020-11-10", check_out_date: "2020-11-19",  hotel_id: 12, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 0)
   
   Booking.create(user_id: 5, guest_name: "Yogesh", no_of_guest: 8, check_in_date: "2020-10-16", check_out_date: "2020-10-19",  hotel_id: 1, single_bed_room: 2, double_bed_room: 1, suite_room: 0, dormitory: 0)
   Booking.create(user_id: 5, guest_name: "jaswant", no_of_guest: 6, check_in_date: "2020-10-20", check_out_date: "2020-10-25",  hotel_id: 2, single_bed_room: 2, double_bed_room: 2, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 5, guest_name: "priya", no_of_guest: 8, check_in_date: "2020-10-17", check_out_date: "2020-10-19",  hotel_id: 3, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 1, accepted: true)
   Booking.create(user_id: 5, guest_name: "ayushi", no_of_guest: 4, check_in_date: "2020-11-10", check_out_date: "2020-11-14",  hotel_id: 4, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 0, accepted: true)
   
   Booking.create(user_id: 6, guest_name: "priyanka", no_of_guest: 8, check_in_date: "2020-10-16", check_out_date: "2020-10-19",  hotel_id: 5, single_bed_room: 2, double_bed_room: 1, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 6, guest_name: "shrishti", no_of_guest: 8, check_in_date: "2020-10-20", check_out_date: "2020-10-22",  hotel_id: 6, single_bed_room: 2, double_bed_room: 2, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 6, guest_name: "navika", no_of_guest: 8, check_in_date: "2020-10-16", check_out_date: "2020-10-18",  hotel_id: 7, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 1, accepted: true)
   Booking.create(user_id: 6, guest_name: "arnab", no_of_guest: 4, check_in_date: "2020-11-10", check_out_date: "2020-11-19",  hotel_id: 8, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 0, accepted: true)
   
   Booking.create(user_id: 7, guest_name: "ravish", no_of_guest: 8, check_in_date: "2020-10-16", check_out_date: "2020-10-19",  hotel_id: 9, single_bed_room: 2, double_bed_room: 1, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 7, guest_name: "punit", no_of_guest: 7, check_in_date: "2020-10-20", check_out_date: "2020-10-25",  hotel_id: 10, single_bed_room: 2, double_bed_room: 2, suite_room: 0, dormitory: 0)
   Booking.create(user_id: 7, guest_name: "salman", no_of_guest: 8, check_in_date: "2020-10-16", check_out_date: "2020-10-18",  hotel_id: 11, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 1)
   Booking.create(user_id: 7, guest_name: "shahrukh", no_of_guest: 4, check_in_date: "2020-11-10", check_out_date: "2020-11-19",  hotel_id: 12, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 0)
   
   Booking.create(user_id: 8, guest_name: "vidyut", no_of_guest: 8, check_in_date: "2020-10-16", check_out_date: "2020-10-19",  hotel_id: 1, single_bed_room: 2, double_bed_room: 1, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 8, guest_name: "ravi", no_of_guest: 7, check_in_date: "2020-10-20", check_out_date: "2020-10-25",  hotel_id: 2, single_bed_room: 2, double_bed_room: 2, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 8, guest_name: "aamir", no_of_guest: 8, check_in_date: "2020-10-16", check_out_date: "2020-10-18",  hotel_id: 3, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 1)
   Booking.create(user_id: 8, guest_name: "piyush", no_of_guest: 4, check_in_date: "2020-11-10", check_out_date: "2020-11-19",  hotel_id: 4, single_bed_room: 1, double_bed_room: 0, suite_room: 1, dormitory: 0)
   
   Booking.create(user_id: 9, guest_name: "shubham", no_of_guest: 3, check_in_date: "2020-10-16", check_out_date: "2020-10-19",  hotel_id: 5, single_bed_room: 2, double_bed_room: 1, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 9, guest_name: "shubham", no_of_guest: 5, check_in_date: "2020-10-20", check_out_date: "2020-10-25",  hotel_id: 6, single_bed_room: 2, double_bed_room: 2, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 9, guest_name: "shubham", no_of_guest: 3, check_in_date: "2020-10-16", check_out_date: "2020-10-18",  hotel_id: 7, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 1)
   Booking.create(user_id: 9, guest_name: "shubham", no_of_guest: 3, check_in_date: "2020-11-10", check_out_date: "2020-11-19",  hotel_id: 8, single_bed_room: 0, double_bed_room: 0, suite_room: 0, dormitory: 1, accepted: true)

   Booking.create(user_id: 10, guest_name: "shubham", no_of_guest: 3, check_in_date: "2020-10-16", check_out_date: "2020-10-19",  hotel_id: 9, single_bed_room: 2, double_bed_room: 1, suite_room: 0, dormitory: 0)
   Booking.create(user_id: 10, guest_name: "shubham", no_of_guest: 3, check_in_date: "2020-10-20", check_out_date: "2020-10-25",  hotel_id: 10, single_bed_room: 0, double_bed_room: 1, suite_room: 0, dormitory: 0, accepted: true)
   Booking.create(user_id: 10, guest_name: "shubham", no_of_guest: 5, check_in_date: "2020-12-16", check_out_date: "2020-12-18",  hotel_id: 11, single_bed_room: 2, double_bed_room: 0, suite_room: 0, dormitory: 1, accepted: true)
   Booking.create(user_id: 10, guest_name: "shubham", no_of_guest: 3, check_in_date: "2020-11-25", check_out_date: "2020-11-29",  hotel_id: 12, single_bed_room: 0, double_bed_room: 0, suite_room: 0, dormitory: 1)

   Rating.create(user_id: 2, hotel_id: 4, rating: 3, comment: 'this is a good hotel')
   Rating.create(user_id: 2, hotel_id: 3, rating: 4, comment: 'this is a nice hotel')
   Rating.create(user_id: 3, hotel_id: 5, rating: 5, comment: ' nice hotel')
   Rating.create(user_id: 3, hotel_id: 6, rating: 3, comment: 'good hotel and good service')
   Rating.create(user_id: 4, hotel_id: 8, rating: 4, comment: 'good service')
   Rating.create(user_id: 4, hotel_id: 4, rating: 4, comment: 'good hotel and good service')
   Rating.create(user_id: 7, hotel_id: 9, rating: 4, comment: 'good hotel and good service')
   Rating.create(user_id: 7, hotel_id: 10, rating: 4, comment: 'good hotel and good service')
   Rating.create(user_id: 7, hotel_id: 11, rating: 4, comment: 'good service')
   Rating.create(user_id: 7, hotel_id: 12, rating: 4, comment: 'good service')