class CreateContractDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :contract_details do |t|
      t.string :job_role
      t.datetime :contract_start_date
      t.datetime :contract_end_date
      t.string :shift
      t.string :status
      t.integer :bond_year

      t.timestamps
    end
  end
end
