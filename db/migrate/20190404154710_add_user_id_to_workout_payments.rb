class AddUserIdToWorkoutPayments < ActiveRecord::Migration[5.2]
  def change
    add_column :workout_payments, :user_id, :integer
    add_index :workout_payments, :user_id
  end
end
