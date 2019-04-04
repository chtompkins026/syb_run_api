class AddWorkoutIdToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :workout_id, :integer
  end
end
