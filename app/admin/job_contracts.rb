ActiveAdmin.register JobContract do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
      actions :index, :edit, :update, :create, :destroy

  permit_params :employee_id, :job_role, :contract_start_date, :contract_end_date, :shift, :status, :bond_year
  #
  # or
  #
  # permit_params do
  #   permitted = [:employee_id, :job_role, :contract_start_date, :contract_end_date, :shift, :status, :bond_year]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
