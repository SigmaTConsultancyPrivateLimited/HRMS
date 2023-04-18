class AddColumnsToPerformanceTable < ActiveRecord::Migration[7.0]
  def change
    add_column :performance_records, :emmployee_id, :integer
    add_column :payrolls, :emmployee_id, :integer
    add_column :contract_details, :emmployee_id, :integer
  end
end
