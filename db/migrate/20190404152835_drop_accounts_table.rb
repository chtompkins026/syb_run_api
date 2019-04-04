class DropAccountsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :accounts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
