class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo
      t.text :email
      t.text :bio
      t.text :instagram
      t.string :experience
      t.integer :account_id
      t.integer :user_id

      t.timestamps
    end
  end
end
