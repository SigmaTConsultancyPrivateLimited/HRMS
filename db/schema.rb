# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_22_081643) do
  create_table "aas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "attendances", force: :cascade do |t|
    t.integer "employee_id"
    t.string "employee_name"
    t.string "attendance_by"
    t.string "shift"
    t.datetime "in_time"
    t.datetime "out_time"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contract_details", force: :cascade do |t|
    t.string "job_role"
    t.datetime "contract_start_date"
    t.datetime "contract_end_date"
    t.string "shift"
    t.string "status"
    t.integer "bond_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.integer "employee_id"
    t.string "department"
    t.string "designation"
    t.integer "total_employees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emmployees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "father_name"
    t.date "date_of_birth"
    t.integer "phone_number"
    t.string "gender"
    t.string "local_address"
    t.string "permanent_address"
    t.string "nationality"
    t.string "marital_status"
    t.string "upload_photo"
    t.string "comment"
    t.string "email"
    t.string "password"
    t.string "resume_file"
    t.string "contract_file"
    t.string "joining_letter"
    t.string "account_holder_name"
    t.string "account_number"
    t.string "bank_name"
    t.string "branch_name"
    t.string "ifsc_code"
    t.string "employee_id"
    t.string "department"
    t.string "designation"
    t.date "date_of_joining"
    t.date "date_of_leaving"
    t.string "shift"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "emp_number"
    t.string "email"
    t.string "password"
    t.string "address"
    t.string "upload_photo"
    t.string "resume"
    t.integer "date_of_birth"
    t.string "join_date"
    t.string "employee_designation"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "sign_out_at"
  end

  create_table "interviews", force: :cascade do |t|
    t.string "candidate_name"
    t.string "applied_role"
    t.datetime "interview_time"
    t.date "date"
    t.string "status"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_applicant_profiles", force: :cascade do |t|
    t.integer "employee_id"
    t.string "applied_role"
    t.integer "total_experience"
    t.string "experienced_in"
    t.string "recruiter_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_applicant_statuses", force: :cascade do |t|
    t.string "job_vacant_role"
    t.datetime "scheduled_interview"
    t.integer "employee_id"
    t.integer "total_applicant_count"
    t.integer "interviews_taken"
    t.string "interview_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_contracts", force: :cascade do |t|
    t.integer "employee_id"
    t.string "job_role"
    t.date "contract_start_date"
    t.date "contract_end_date"
    t.string "shift"
    t.string "status"
    t.integer "bond_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_vacancies", force: :cascade do |t|
    t.string "job_title"
    t.string "role"
    t.string "hiring_manager"
    t.integer "number_of_position"
    t.string "job_location"
    t.string "job_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_allocation_requests", force: :cascade do |t|
    t.integer "employee_id"
    t.string "leave_type"
    t.string "reason"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_reports", force: :cascade do |t|
    t.integer "employee_id"
    t.string "employee_name"
    t.string "leave_type"
    t.string "reason"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_statuses", force: :cascade do |t|
    t.integer "leave_allocation_request_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payrolls", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "salary"
    t.string "payslip_for_the_month"
    t.integer "paid_days"
    t.string "loss_of_pay"
    t.integer "days"
    t.date "transaction_date"
    t.time "transaction_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payslips", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "salary"
    t.string "payslip_for_the_month"
    t.date "paid_days"
    t.string "Lop"
    t.date "days"
    t.date "transaction_date"
    t.datetime "transaction_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performance_records", force: :cascade do |t|
    t.string "project_name"
    t.string "task"
    t.date "sprint_start_date"
    t.date "sprint_end_date"
    t.string "reporting_to"
    t.string "status"
    t.datetime "current_sign_in_at"
    t.string "task_type"
    t.datetime "hours_spent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_name"
    t.string "description"
    t.date "start_date"
    t.date "end_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer "employee_id"
    t.string "project_name"
    t.string "task"
    t.date "sprint_start_date"
    t.date "sprint_end_date"
    t.string "reporting_to"
    t.string "status"
    t.string "task_type"
    t.datetime "hours_spent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "samples", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_sample_1s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_samples", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string "training_name"
    t.integer "batch"
    t.string "employee_name"
    t.string "feedback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
