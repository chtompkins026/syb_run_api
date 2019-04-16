class AddRegionToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :region, :string
  end
end
