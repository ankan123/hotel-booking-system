require 'test_helper'

class BookingstatusMailerTest < ActionMailer::TestCase
  test "accept_booking" do
    mail = BookingstatusMailer.accept_booking
    assert_equal "Accept booking", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "reject_booking" do
    mail = BookingstatusMailer.reject_booking
    assert_equal "Reject booking", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
