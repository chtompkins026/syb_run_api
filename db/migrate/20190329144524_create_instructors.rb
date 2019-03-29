class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.text :name
      t.text :email
      t.text :bio
      t.text :instagram

      t.timestamps
    end
  end
end
