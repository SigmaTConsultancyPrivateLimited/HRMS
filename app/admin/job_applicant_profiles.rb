ActiveAdmin.register JobApplicantProfile do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  actions :index, :edit, :update, :create, :destroy

  permit_params :employee_id, :applied_role, :total_experience, :experienced_in, :recruiter_name
  #
  # or
  #
  # permit_params do
  #   permitted = [:employee_id, :applied_role, :total_experience, :experienced_in, :recruiter_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
