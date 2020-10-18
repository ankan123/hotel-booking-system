require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "visiting the index" do
    visit bookings_url
    assert_selector "h1", text: "Bookings"
  end

  test "creating a Booking" do
    visit bookings_url
    click_on "New Booking"

    fill_in "Check in date", with: @booking.check_in_date
    fill_in "Check out date", with: @booking.check_out_date
    fill_in "Guest name", with: @booking.guest_name
    fill_in "Hotels", with: @booking.hotels_id
    fill_in "No of guest", with: @booking.no_of_guest
    fill_in "Room", with: @booking.room
    fill_in "User", with: @booking.user_id
    click_on "Create Booking"

    assert_text "Booking was successfully created"
    click_on "Back"
  end

  test "updating a Booking" do
    visit bookings_url
    click_on "Edit", match: :first

    fill_in "Check in date", with: @booking.check_in_date
    fill_in "Check out date", with: @booking.check_out_date
    fill_in "Guest name", with: @booking.guest_name
    fill_in "Hotels", with: @booking.hotels_id
    fill_in "No of guest", with: @booking.no_of_guest
    fill_in "Room", with: @booking.room
    fill_in "User", with: @booking.user_id
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    click_on "Back"
  end

  test "destroying a Booking" do
    visit bookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booking was successfully destroyed"
  end
end
