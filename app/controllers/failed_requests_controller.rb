class FailedRequestsController < ApplicationController
  before_action :set_failed_request, only: [:show, :edit, :update, :destroy]

  # GET /failed_requests
  # GET /failed_requests.json
  def index
    @failed_requests = FailedRequest.all
  end

  # GET /failed_requests/1
  # GET /failed_requests/1.json
  def show
  end

  # GET /failed_requests/new
  def new
    @failed_request = FailedRequest.new
  end

  # GET /failed_requests/1/edit
  def edit
  end

  # POST /failed_requests
  # POST /failed_requests.json
  def create
    @failed_request = FailedRequest.new(failed_request_params)

    respond_to do |format|
      if @failed_request.save
        format.html { redirect_to @failed_request, notice: 'Failed request was successfully created.' }
        format.json { render :show, status: :created, location: @failed_request }
      else
        format.html { render :new }
        format.json { render json: @failed_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /failed_requests/1
  # PATCH/PUT /failed_requests/1.json
  def update
    respond_to do |format|
      if @failed_request.update(failed_request_params)
        format.html { redirect_to @failed_request, notice: 'Failed request was successfully updated.' }
        format.json { render :show, status: :ok, location: @failed_request }
      else
        format.html { render :edit }
        format.json { render json: @failed_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /failed_requests/1
  # DELETE /failed_requests/1.json
  def destroy
    @failed_request.destroy
    respond_to do |format|
      format.html { redirect_to failed_requests_url, notice: 'Failed request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_failed_request
      @failed_request = FailedRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def failed_request_params
      params.require(:failed_request).permit(:user_id, :user_email, :start_date, :end_date, :number_slots, :club_name)
    end
end
