class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :title
      t.integer :cost
      t.datetime :start
      t.text :cancellation_reason
      t.boolean :refunded
      t.integer :instructor_id
      t.integer :schedule_id
      t.integer :workout_id
      t.integer :account_id

      t.timestamps
    end
    add_index :bookings, :instructor_id
    add_index :bookings, :schedule_id
    add_index :bookings, :workout_id
    add_index :bookings, :account_id
  end
end
