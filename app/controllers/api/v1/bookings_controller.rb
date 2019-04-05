class Api::V1::BookingsController < ApplicationController

  def index
      @bookings = Booking.all
      render json: @bookings
  end

  # GET /bookings/1.json
  def show
    @booking = Booking.find_by(id: params[:id])
    render json: @booking
  end

    # GET /bookings/new
    def new
      @booking = Booking.new
      render json: @booking
    end

    # GET /bookings/1/edit
    def edit
    end

    # POST /bookings
    # POST /bookings.json
    def create
      @booking = Booking.new(booking_params)

      respond_to do |format|
        if @booking.save
          format.json { render json: @booking, status: :created, location: @booking }
        else
          format.json { render json: @booking.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /bookings/1
    # PATCH/PUT /bookings/1.json
    def update
      respond_to do |format|
        if @booking.update(booking_params)
          format.json { render json: @booking, status: :ok, location: @booking }
        else
          format.json { render json: @booking.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /booking/1
    # DELETE /booking/1.json
    def destroy
      @booking.destroy
      respond_to do |format|
        format.json { head :no_content }
      end
    end

private
  # Never trust parameters from the scary internet, only allow the white list through.
  def booking_params
    params.require(:booking).permit(:status, :title, :cost, :start, :cancellation_reason, :refunded, :instructor_id,
      :schedule_id, :workout_id, :created_at, :updated_at, :user_id)
  end

  # def set_user
  #   @user = User.find(params[:id])
  # end

end
