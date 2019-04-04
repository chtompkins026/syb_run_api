class RemoveAccountIdFromClients < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :account_id, :integer
  end
end
