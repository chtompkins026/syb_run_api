class RemoveAccountIdFromSchedules < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedules, :account_id, :integer
  end
end
