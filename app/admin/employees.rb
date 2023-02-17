ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  actions :index, :edit, :update, :create, :destroy

  permit_params :first_name, :last_name, :emp_number, :email, :password, :address, :upload_photo, :resume, :date_of_birth, :join_date, :employee_designation, :current_sign_in_at, :last_sign_in_at, :sign_out_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :emp_number, :email, :password, :address, :upload_photo, :resume, :date_of_birth, :join_date, :employee_designation, :current_sign_in_at, :last_sign_in_at, :sign_out_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

