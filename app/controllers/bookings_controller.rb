class BookingsController < ApplicationController
    before_action :authenticate_user!

    def bookinglist
        if current_user.admin
          @pagy, @bookings = pagy(Booking.all.order(created_at: :desc),items: 8)
        else 
          @pagy, @bookings = pagy(Booking.where('user_id = ?',current_user).order(created_at: :desc),items: 8)
        end
    end

    def accept
      @booking = Booking.find(params[:id])
      BookingstatusMailer.accept_booking(@booking).deliver 
      @booking.accepted = true
      if @booking.save 
        flash[:booking_status] = @booking.errors.add(:status,": booking accepted!!! email confirmation has been successfully send!")
        redirect_to booking_bookinglist_path
      end
    end

    def new
      last_date_greater_than_start_date_and_smaller_six_month 
      check_room_availability
      @booking = Booking.new
    end

    def show
        @booking = Booking.find(params[:id])
    end

    def create       
        @booking = Booking.new(booking_params)
        @booking.user = current_user
        if @booking.save
            UserbookingMailer.booking_confirmation(@booking).deliver     
            render 'show'
        else
            flash[:booking_errors] = @booking.errors.full_messages
            render 'new'
        end
    end

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        BookingstatusMailer.reject_booking(@booking).deliver
        flash[:booking_status] = @booking.errors.add(:status,": booking rejected!!! email  has been successfully send!")
        redirect_to booking_bookinglist_path
    end

    private

    def booking_params
        params.require(:booking).permit(:hotel_id, :guest_name, :no_of_guest, :single_bed_room, :double_bed_room, :suite_room, :dormitory, :check_in_date, :check_out_date, :accepted)
    end

    def check_room_availability  
      hotel = Hotel.find(params[:hotel_id])
      booked_single_room = Booking.total_single_bed_room_booked(params[:check_in],params[:check_out],params[:hotel_id])
      booked_double_room = Booking.total_double_bed_room_booked(params[:check_in],params[:check_out],params[:hotel_id])
      booked_suite_room = Booking.total_suite_room_booked(params[:check_in],params[:check_out],params[:hotel_id])
      booked_dormitory_room = Booking.total_dormitory_booked(params[:check_in],params[:check_out],params[:hotel_id])
  
      @single_room_left = hotel.single_bed_room - booked_single_room
      @double_room_left = hotel.double_bed_room - booked_double_room
      @suite_room_left = hotel.suite_room - booked_suite_room
      @dormitory_left = hotel.dormitory - booked_dormitory_room

      @available = true

      if @single_room_left === 0 && @double_room_left=== 0 && @suite_room_left === 0 && @dormitory_left === 0
        @available = false
      end
      
      @hotel_name = hotel.name 
      @days = (params[:check_out].to_date-params[:check_in].to_date).to_i
    end

    def last_date_greater_than_start_date_and_smaller_six_month 
      @hotel = Hotel.find(params[:hotel_id])

    
      if Date.today > params[:check_in].to_date
        flash[:dates_errors] = @hotel.errors.add(:check_in_date, "check-in date should be greater or equal to today's date")
        redirect_to hotel_path(:id => @hotel.id)
      elsif Date.today + 6.months < params[:check_out].to_date 
        flash[:dates_errors] = @hotel.errors.add(:check_out_date, "check-out date should be smaller than 6 months")
        redirect_to hotel_path(:id => @hotel.id)
      elsif params[:check_out].to_date < params[:check_in].to_date
        flash[:dates_errors] = @hotel.errors.add(:check_out_date, "check-out date should be greater than Check in Date")
        redirect_to hotel_path(:id => @hotel.id)
      end
    end
  
    def dates_is_blank?
      if params[:check_in].to_date.blank? || params[:check_out].to_date.blank?
        return true
      end
    end

end
