class Api::V1::BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
      @bookings = Booking.all
      render json: @bookings
  end

  # GET /bookings/1.json
  def show
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
      if @booking.save
        render json: @booking
      else
        render json: @booking.errors
      end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    if @booking.update(booking_params)
      render json: @booking
    else
      render json: @booking.errors
    end
  end

  # DELETE /booking/1
  # DELETE /booking/1.json
  def destroy
    @booking.destroy
  end

private
  # Never trust parameters from the scary internet, only allow the white list through.
  def booking_params
    params.permit(:status, :title, :cost, :start, :cancellation_reason, :refunded, :instructor_id,
      :schedule_id, :client_id)
  end

  def set_booking
    @booking = Booking.find_by(id: params[:id])
  end

end
