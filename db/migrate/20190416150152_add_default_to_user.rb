class AddDefaultToUser < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :account_type, :integer, default: 1
  end

  def down
    change_column :users, :account_type, :integer, default: 1
  end
end
