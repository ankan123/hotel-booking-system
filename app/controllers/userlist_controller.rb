class UserlistController < ApplicationController
    before_action :authenticate_user!

    def index
        @pagy, @users = pagy(User.where("admin = ?",false),items: 8)

    end

    def userbooking
        @pagy, @bookings = pagy(Booking.where("user_id = ?",params[:id]),items: 8)
    end

end
