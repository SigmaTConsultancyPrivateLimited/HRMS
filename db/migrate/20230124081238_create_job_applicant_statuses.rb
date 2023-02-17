class CreateJobApplicantStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :job_applicant_statuses do |t|
      t.string :job_vacant_role
      t.datetime :scheduled_interview
      t.integer :employee_id
      t.integer :total_applicant_count
      t.integer :interviews_taken
      t.string :interview_status

      t.timestamps
    end
  end
end
