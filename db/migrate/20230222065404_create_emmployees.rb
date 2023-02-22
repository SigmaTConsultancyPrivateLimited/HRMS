class CreateEmmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :emmployees do |t|
      t.string :first_name
      t.string :last_name
      t.string :father_name
      t.date :date_of_birth
      t.integer :phone_number
      t.string :gender
      t.string :local_address
      t.string :permanent_address
      t.string :nationality
      t.string :marital_status
      t.string :upload_photo
      t.string :comment
      t.string :email
      t.string :password
      t.string :resume_file
      t.string :contract_file
      t.string :joining_letter
      t.string :account_holder_name
      t.string :account_number
      t.string :bank_name
      t.string :branch_name
      t.string :ifsc_code
      t.string :employee_id
      t.string :department
      t.string :designation
      t.date :date_of_joining
      t.date :date_of_leaving
      t.string :shift

      t.timestamps
    end
  end
end
