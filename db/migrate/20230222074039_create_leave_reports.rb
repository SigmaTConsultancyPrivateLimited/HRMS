class CreateLeaveReports < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_reports do |t|
      t.integer :employee_id
      t.string :employee_name
      t.string :leave_type
      t.string :reason
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
