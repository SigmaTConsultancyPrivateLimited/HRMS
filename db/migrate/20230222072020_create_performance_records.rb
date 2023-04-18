class CreatePerformanceRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :performance_records do |t|
      t.string :project_name
      t.string :task
      t.date :sprint_start_date
      t.date :sprint_end_date
      t.string :reporting_to
      t.string :status
      t.datetime :current_sign_in_at
      t.string :task_type
      t.datetime :hours_spent

      t.timestamps
    end
  end
end
