class CreateLeaveAllocationRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_allocation_requests do |t|
      t.integer :employee_id
      t.string :leave_type
      t.string :reason
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
