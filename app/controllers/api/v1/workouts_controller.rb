  class Api::V1::WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  # GET /workouts
  # GET /workouts.json
  def index
    @workouts = Workout.all
    render json: @workouts
  end

  # GET /workouts/1
  # GET /workouts/1.json
  def show
    render json: @workout
  end

  # GET /workouts/new
  def new
    @workout = Workout.new
    render json: @workout
  end

  # GET /workouts/1/edit
  def edit
  end

  # POST /workouts
  # POST /workouts.json
  def create
    @workout = Workout.new(workout_params)
      if @workout.save
        render json: @workout
      else
        render json: @workout.errors
      end
  end

  # PATCH/PUT /workouts/1
  # PATCH/PUT /workouts/1.json
  def update
    if @workout.update(workout_params)
      render json: @workout
    else
      render json: @workout.errors
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_params
      params.require(:workout).permit(:name, :type, :duration, :location, :description, :image, :cost, :level)
    end
end
