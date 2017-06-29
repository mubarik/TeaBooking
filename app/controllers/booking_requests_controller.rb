class BookingRequestsController < ApplicationController
  before_action :set_booking_request, only: [:show, :edit, :update, :destroy]

  # GET /booking_requests
  # GET /booking_requests.json
  def index
    @booking_requests = BookingRequest.all
  end

  # GET /booking_requests/1
  # GET /booking_requests/1.json
  def show
  end

  # GET /booking_requests/new
  def new
    @booking_request = BookingRequest.new
  end

  # GET /booking_requests/1/edit
  def edit
  end

  # POST /booking_requests
  # POST /booking_requests.json
  def create
    @booking_request = BookingRequest.new(booking_request_params)

    respond_to do |format|
      if @booking_request.save
        format.html { redirect_to @booking_request, notice: 'Booking request was successfully created.' }
        format.json { render :show, status: :created, location: @booking_request }
      else
        format.html { render :new }
        format.json { render json: @booking_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booking_requests/1
  # PATCH/PUT /booking_requests/1.json
  def update
    respond_to do |format|
      if @booking_request.update(booking_request_params)
        format.html { redirect_to @booking_request, notice: 'Booking request was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking_request }
      else
        format.html { render :edit }
        format.json { render json: @booking_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_requests/1
  # DELETE /booking_requests/1.json
  def destroy
    @booking_request.destroy
    respond_to do |format|
      format.html { redirect_to booking_requests_url, notice: 'Booking request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_request
      @booking_request = BookingRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_request_params
      params.require(:booking_request).permit(:user_id)
    end
end
