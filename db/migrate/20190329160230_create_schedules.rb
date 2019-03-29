class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.integer :instructor_id
      t.integer :account_id

      t.timestamps
    end
    add_index :schedules, :instructor_id
    add_index :schedules, :account_id
  end
end
