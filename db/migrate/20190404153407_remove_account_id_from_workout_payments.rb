class RemoveAccountIdFromWorkoutPayments < ActiveRecord::Migration[5.2]
  def change
    remove_column :workout_payments, :account_id, :integer
  end
end
