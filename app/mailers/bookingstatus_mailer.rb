class BookingstatusMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.bookingstatus_mailer.accept_booking.subject
  #
  def accept_booking(booking)
    @greeting = "Hi, the booking has been accepted"
    @booking = booking
    mail to: booking.user.email, subject: "Booking status"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.bookingstatus_mailer.reject_booking.subject
  #
  def reject_booking(booking)
    @greeting = "Hi, the booking has been rejected"
    @booking = booking
    mail to: booking.user.email, subject: "Booking status"
  end
end
