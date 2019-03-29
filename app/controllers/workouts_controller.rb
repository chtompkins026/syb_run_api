class WorkoutsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def index
    @workouts = Workout.paginate(:page => params[:page], :per_page => 6).order('sort ASC')
  end

  def show
    @others = Workout.paginate(:page => params[:page], :per_page => 4).order('sort ASC')
  end

  private
  def set_lesson
    @workout = Workout.find(params[:id])
  end

end
