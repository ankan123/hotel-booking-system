# Preview all emails at http://localhost:3000/rails/mailers/bookingstatus_mailer
class BookingstatusMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/bookingstatus_mailer/accept_booking
  def accept_booking
    BookingstatusMailer.accept_booking
  end

  # Preview this email at http://localhost:3000/rails/mailers/bookingstatus_mailer/reject_booking
  def reject_booking
    BookingstatusMailer.reject_booking
  end

end
