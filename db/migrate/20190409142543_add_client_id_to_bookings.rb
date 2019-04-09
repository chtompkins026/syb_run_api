class AddClientIdToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :client_id, :integer
  end
end
