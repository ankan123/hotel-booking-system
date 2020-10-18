class RatingsController < ApplicationController
    before_action :authenticate_user!

    def create

        @hotel = Hotel.find(params[:hotel_id])
        @rating = @hotel.ratings.create(rating_params)
        @rating.user = current_user
        @rating.save
        redirect_to hotel_path(@hotel)
      end

      def destroy
        @hotel = Hotel.find(params[:hotel_id])
        @rating = @hotel.ratings.find(params[:id])
        @rating.destroy
        redirect_to hotel_path(@hotel)
      end
     
      private
        def rating_params
          params.require(:rating).permit(:rating, :comment)
        end 

end
