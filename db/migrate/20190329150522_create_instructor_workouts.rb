class CreateInstructorWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :instructor_workouts do |t|
      t.integer :instructor_id
      t.integer :workout_id

      t.timestamps
    end
  end
end
