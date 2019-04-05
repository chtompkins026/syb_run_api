class Api::V1::SchedulesController < ApplicationController

  def index
      @schedules = Schedule.all
      render json: @schedules
  end

  # GET /schedules/1.json
  def show
    @schedule = Schedule.find_by(id: params[:id])
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

      respond_to do |format|
        if @schedule.save
          format.json { render json: @schedule, status: :created, location: @schedule }
        else
          format.json { render json: @schedule.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /schedules/1
    # PATCH/PUT /schedules/1.json
    def update
      respond_to do |format|
        if @schedule.update(schedule_params)
          format.json { render json: @schedule, status: :ok, location: @schedule }
        else
          format.json { render json: @schedule.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /schedule/1
    # DELETE /schedule/1.json
    def destroy
      @schedule.destroy
      respond_to do |format|
        format.json { head :no_content }
      end
    end

private
  # Never trust parameters from the scary internet, only allow the white list through.
  def schedule_params
    params.require(:schedule).permit(:title, :start, :end, :instructor_id,
      :created_at, :updated_at, :workout_id)
  end

  def set_workout
    @workout = Workout.find(params[:workout_id])
  end

end
