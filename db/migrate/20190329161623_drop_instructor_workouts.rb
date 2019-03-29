class DropInstructorWorkouts < ActiveRecord::Migration[5.2]
  def change
    drop_table :instructor_workouts
  end
end
