class CreateWorkoutPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_payments do |t|
      t.string :payment_number
      t.string :status
      t.date :date
      t.integer :cost
      t.string :service
      t.integer :booking_id
      t.integer :account_id

      t.timestamps
    end
    add_index :workout_payments, :booking_id
    add_index :workout_payments, :account_id
  end
end
