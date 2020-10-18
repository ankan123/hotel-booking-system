# Preview all emails at http://localhost:3000/rails/mailers/userbooking_mailer
class UserbookingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/userbooking_mailer/booking_confirmation
  def booking_confirmation
    UserbookingMailer.booking_confirmation
  end

end
