class CreateLeaveStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_statuses do |t|
      t.integer :leave_allocation_request_id
      t.string :status

      t.timestamps
    end
  end
end
