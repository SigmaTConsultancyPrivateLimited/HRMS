class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.integer :employee_id
      t.string :department
      t.string :designation
      t.integer :total_employees

      t.timestamps
    end
  end
end
