ActiveAdmin.register JobApplicantStatus do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
    actions :index, :edit, :update, :create, :destroy

  permit_params :job_vacant_role, :scheduled_interview, :employee_id, :total_applicant_count, :interviews_taken, :interview_status
  #
  # or
  #
  # permit_params do
  #   permitted = [:job_vacant_role, :scheduled_interview, :employee_id, :total_applicant_count, :interviews_taken, :interview_status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
