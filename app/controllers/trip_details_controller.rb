class TripDetailsController < ApplicationController
  before_action :set_trip_detail, only: [:show, :edit, :update, :destroy]

  # GET /trip_details
  # GET /trip_details.json
  def index
    @trip_details = TripDetail.all
  end

  # GET /trip_details/1
  # GET /trip_details/1.json
  def show
  end

  # GET /trip_details/new
  def new
    @trip_detail = TripDetail.new
  end

  # GET /trip_details/1/edit
  def edit
  end

  # POST /trip_details
  # POST /trip_details.json
  def create
    @trip_detail = TripDetail.new(trip_detail_params)

    respond_to do |format|
      if @trip_detail.save
        format.html { redirect_to @trip_detail, notice: 'Trip detail was successfully created.' }
        format.json { render :show, status: :created, location: @trip_detail }
      else
        format.html { render :new }
        format.json { render json: @trip_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_details/1
  # PATCH/PUT /trip_details/1.json
  def update
    respond_to do |format|
      if @trip_detail.update(trip_detail_params)
        format.html { redirect_to @trip_detail, notice: 'Trip detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip_detail }
      else
        format.html { render :edit }
        format.json { render json: @trip_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_details/1
  # DELETE /trip_details/1.json
  def destroy
    @trip_detail.destroy
    respond_to do |format|
      format.html { redirect_to trip_details_url, notice: 'Trip detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_detail
      @trip_detail = TripDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_detail_params
      params.require(:trip_detail).permit(:trip_id, :index, :name, :description, :duration)
    end
end
