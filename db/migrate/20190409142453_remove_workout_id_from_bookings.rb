class RemoveWorkoutIdFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :workout_id, :integer
  end
end
