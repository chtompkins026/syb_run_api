class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :workouts, :location, :region
  end
end
