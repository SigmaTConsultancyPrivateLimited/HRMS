ActiveAdmin.register Report do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
    actions :index, :edit, :update, :create, :destroy

  permit_params :employee_id, :project_name, :task, :sprint_start_date, :sprint_end_date, :reporting_to, :status, :task_type, :hours_spent
  #
  # or
  #
  # permit_params do
  #   permitted = [:employee_id, :project_name, :task, :sprint_start_date, :sprint_end_date, :reporting_to, :status, :task_type, :hours_spent]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
