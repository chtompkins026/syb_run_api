class Api::V1::SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  def index
    @schedules = Schedule.all
    render json: @schedules
  end

  # GET /schedules/1.json
  def show
    render json: @schedule
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
    render json: @schedule
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)
      if @schedule.save
        render json: @schedule
      else
        render json: @schedule.errors
      end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
      if @schedule.update(schedule_params)
        render json: @schedule
      else
        render json: @schedule.errors
      end
  end

  # DELETE /schedule/1
  # DELETE /schedule/1.json
  def destroy
    @schedule.destroy
  end

private
  # Never trust parameters from the scary internet, only allow the white list through.
  def schedule_params
    params.permit(:title, :start, :end, :instructor_id,
      :workout_id)
  end

  def set_schedule
    @schedule = Schedule.find_by(id: params[:id])
  end

end
