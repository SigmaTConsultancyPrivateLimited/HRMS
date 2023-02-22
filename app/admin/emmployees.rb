ActiveAdmin.register Emmployee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :first_name, :last_name, :father_name, :date_of_birth, :phone_number, :gender, :local_address, :permanent_address, :nationality, :marital_status, :upload_photo, :comment, :email, :password, :resume_file, :contract_file, :joining_letter, :account_holder_name, :account_number, :bank_name, :branch_name, :ifsc_code, :employee_id, :department, :designation, :date_of_joining, :date_of_leaving, :shift
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :father_name, :date_of_birth, :phone_number, :gender, :local_address, :permanent_address, :nationality, :marital_status, :upload_photo, :comment, :email, :password, :resume_file, :contract_file, :joining_letter, :account_holder_name, :account_number, :bank_name, :branch_name, :ifsc_code, :employee_id, :department, :designation, :date_of_joining, :date_of_leaving, :shift]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
