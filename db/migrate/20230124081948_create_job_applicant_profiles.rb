class CreateJobApplicantProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :job_applicant_profiles do |t|
      t.integer :employee_id
      t.string :applied_role
      t.integer :total_experience
      t.string :experienced_in
      t.string :recruiter_name

      t.timestamps
    end
  end
end
