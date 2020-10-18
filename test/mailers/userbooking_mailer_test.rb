require 'test_helper'

class UserbookingMailerTest < ActionMailer::TestCase
  test "booking_confirmation" do
    mail = UserbookingMailer.booking_confirmation
    assert_equal "Booking confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
