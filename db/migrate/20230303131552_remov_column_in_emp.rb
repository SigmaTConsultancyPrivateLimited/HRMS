class RemovColumnInEmp < ActiveRecord::Migration[7.0]
  def change
    remove_column :emmployees, :employee_id, :string
  end
end
