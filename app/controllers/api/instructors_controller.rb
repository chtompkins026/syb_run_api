class Api::InstructorsController < ApplicationController
  before_action :set_trainer, only: [:show, :edit, :update, :destroy]

  # GET /instructor
  # GET /instructor.json
  def index
    @instructors = Instructors.all
    render json: @instructors
  end

  # GET /instructors/1
  # GET /instructors/1.json
  def show
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

    respond_to do |format|
      if @instructor.save
        format.json { render :show, status: :created, location: @instructor }
      else
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instructors/1
  # PATCH/PUT /instructors/1.json
  def update
    respond_to do |format|
      if @instructor.update(instructor_params)
        format.json { render :show, status: :ok, location: @instructor }
      else
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructors/1
  # DELETE /instructors/1.json
  def destroy
    @instructor.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor
      @instructor = Instructor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instructor_params
      params.require(:instructor).permit(:photo, :first_name, :last_name, :phone, :email, :bio, :instagram, :experience, :user_id, :account_id)
    end
end
