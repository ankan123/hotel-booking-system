class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show,:index]
  # GET /hotels
  # GET /hotels.json
  def index 
    #@hotels = Hotel.search(params[:city],params[:check_in],params[:check_out],params[:room])
    @all_hotels = Hotel.where("location LIKE ?","%#{params[:city]}%")

    filtered_hotel_ids = []

    @all_hotels.each do |hotel|

      booked_single_bed_room = Booking.total_single_bed_room_booked(params[:check_in].to_date,params[:check_out].to_date,hotel.id)
      booked_double_bed_room = Booking.total_double_bed_room_booked(params[:check_in].to_date,params[:check_out].to_date,hotel.id)
      booked_suite_room = Booking.total_suite_room_booked(params[:check_in].to_date,params[:check_out].to_date,hotel.id)
      booked_dormitory = Booking.total_dormitory_booked(params[:check_in].to_date,params[:check_out].to_date,hotel.id)

      if hotel.single_bed_room - booked_single_bed_room > params[:single_bed_room].to_i && hotel.double_bed_room - booked_double_bed_room > params[:double_bed_room].to_i && hotel.suite_room - booked_suite_room > params[:suite_room].to_i && hotel.dormitory - booked_dormitory > params[:dormitory].to_i
        filtered_hotel_ids.push(hotel.id)
      end
    end

    @filtered_hotels = Hotel.find(filtered_hotel_ids)
    @city = params[:city]
    @start_date = (params[:check_in]).to_date
    @end_date = (params[:check_out]).to_date
  end

  # GET /hotels/1
  # GET /hotels/1.json
  def show
  
  end
  

  # GET /hotels/new
  def new
    @hotel = Hotel.new
    
  end

  # GET /hotels/1/edit
  def edit
  end

  # POST /hotels
  # POST /hotels.json
  def create
    @hotel = Hotel.new(hotel_params)
    @hotel.user = current_user
    respond_to do |format|
      if @hotel.save
        format.html { redirect_to @hotel, notice: 'Hotel was successfully created.' }
        format.json { render :show, status: :created, location: @hotel }
      else
        format.html { render :new }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotels/1
  # PATCH/PUT /hotels/1.json
  def update
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { redirect_to @hotel, notice: 'Hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotel }
      else
        format.html { render :edit }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.json
  def destroy
    @hotel.destroy
    respond_to do |format|
      format.html { redirect_to '/', notice: 'Hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hotel_params
      params.require(:hotel).permit(:name, :location, :details, :price, :single_bed_room, :double_bed_room, :suite_room, :dormitory,:refrigetator, :tv, :geyser, :heater, :ac, :latitude, :longitude, images: [])
    end
end
