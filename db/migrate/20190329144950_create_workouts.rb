class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :type
      t.integer :duration
      t.string :location
      t.text :description
      t.string :image
      t.integer :cost
      t.string :level 

      t.timestamps
    end
  end
end
