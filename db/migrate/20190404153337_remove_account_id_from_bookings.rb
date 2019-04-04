class RemoveAccountIdFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :account_id, :integer
  end
end
