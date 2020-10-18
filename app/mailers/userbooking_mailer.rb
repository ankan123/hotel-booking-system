class UserbookingMailer < ApplicationMailer
  
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.userbooking_mailer.booking_confirmation.subject
  #
  def booking_confirmation(booking)
    @booking = booking

    mail to: booking.user.email, subject: "Booking  details"
  end
end
