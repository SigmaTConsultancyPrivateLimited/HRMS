class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :emp_number
      t.string :email
      t.string :password
      t.string :address
      t.string :upload_photo
      t.string :resume
      t.integer :date_of_birth
      t.string :join_date
      t.string :employee_designation
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at

      t.timestamps
    end
  end
end
