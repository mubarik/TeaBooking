class TeaBookingsController < ApplicationController
  before_action :set_tea_booking, only: [:show, :edit, :update, :destroy]

  # GET /tea_bookings
  # GET /tea_bookings.json
  def index
    @tea_bookings = TeaBooking.all
  end

  # GET /tea_bookings/1
  # GET /tea_bookings/1.json
  def show
  end

  # GET /tea_bookings/new
  def new
    @tea_booking = TeaBooking.new
  end

  # GET /tea_bookings/1/edit
  def edit
  end

  # POST /tea_bookings
  # POST /tea_bookings.json
  def create
    @tea_booking = TeaBooking.new(tea_booking_params)

    respond_to do |format|
      if @tea_booking.save
        format.html { redirect_to @tea_booking, notice: 'Tea booking was successfully created.' }
        format.json { render :show, status: :created, location: @tea_booking }
      else
        format.html { render :new }
        format.json { render json: @tea_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tea_bookings/1
  # PATCH/PUT /tea_bookings/1.json
  def update
    respond_to do |format|
      if @tea_booking.update(tea_booking_params)
        format.html { redirect_to @tea_booking, notice: 'Tea booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @tea_booking }
      else
        format.html { render :edit }
        format.json { render json: @tea_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tea_bookings/1
  # DELETE /tea_bookings/1.json
  def destroy
    @tea_booking.destroy
    respond_to do |format|
      format.html { redirect_to tea_bookings_url, notice: 'Tea booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    TeaBooking.import(params[:file])
    redirect_to root_url, notice: 'Tea Bookings imported.'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tea_booking
      @tea_booking = TeaBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tea_booking_params
      params.require(:tea_booking).permit(:user_email, :start_date, :end_date, :number_time_slots, :club_name)
    end
end
