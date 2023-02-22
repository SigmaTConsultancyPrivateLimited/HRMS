class CreateInterviews < ActiveRecord::Migration[7.0]
  def change
    create_table :interviews do |t|
      t.string :candidate_name
      t.string :applied_role
      t.datetime :interview_time
      t.date :date
      t.string :status
      t.string :comments

      t.timestamps
    end
  end
end
