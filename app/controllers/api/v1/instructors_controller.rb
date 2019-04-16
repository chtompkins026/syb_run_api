class Api::V1::InstructorsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  # GET /instructor
  # GET /instructor.json
  def index
    @instructors = Instructor.all
    # render json: @instructors.to_json
    render json: @instructors.to_json(only: [:first_name, :last_name, :region, :photo, :email, :bio, :instagram, :experience, :user_id],
                          include: [schedules: { only: [:title, :start, :end, :instructor_id, :workout_id]}])
  end

  # GET /instructors/1
  # GET /instructors/1.json
  def show
    render json: @instructor
  end

  # GET /instructors/new
  def new
    @instructor = Instructor.new
    render json: @instructor
  end

  # GET /instructors/1/edit
  def edit
  end

  # POST /instructors
  # POST /instructors.json
  def create
    @instructor = Instructor.new(trainer_params)
      if @instructor.save
        render json: @instructor
      else
        render json: @instructor.errors
      end
  end

  # PATCH/PUT /instructors/1
  # PATCH/PUT /instructors/1.json
  def update
    if @instructor.update(instructor_params)
      render json: @instructor
    else
      render json: @instructor.errors
    end
  end

  # DELETE /instructors/1
  # DELETE /instructors/1.json
  def destroy
    @instructor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor
      @instructor = Instructor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instructor_params
      params.permit(:photo, :first_name, :last_name, :region, :phone, :email, :bio, :instagram, :experience, :user_id, :account_id)
    end
end
