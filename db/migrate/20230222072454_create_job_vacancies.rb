class CreateJobVacancies < ActiveRecord::Migration[7.0]
  def change
    create_table :job_vacancies do |t|
      t.string :job_title
      t.string :role
      t.string :hiring_manager
      t.integer :number_of_position
      t.string :job_location
      t.string :job_description

      t.timestamps
    end
  end
end
