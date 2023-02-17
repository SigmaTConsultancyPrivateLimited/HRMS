class CreateJobContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :job_contracts do |t|
      t.integer :employee_id
      t.string :job_role
      t.date :contract_start_date
      t.date :contract_end_date
      t.string :shift
      t.string :status
      t.integer :bond_year

      t.timestamps
    end
  end
end
