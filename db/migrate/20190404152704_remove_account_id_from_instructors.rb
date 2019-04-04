class RemoveAccountIdFromInstructors < ActiveRecord::Migration[5.2]
  def change
    remove_column :instructors, :account_id, :integer
  end
end
