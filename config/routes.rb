Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :departments
  resources :payrolls
  resources :leave_reports
  resources :attendances
  resources :contract_details
  resources :trainings
  resources :projects
  resources :job_vacancies
  resources :interviews
  resources :performance_records
  resources :emmployees
  resources :my_controllers
  resources :samples
 
  # resources :books
  
  
  # #devise login page
  root "pages#home"
  #  # devise_for :users
  

  # # root "pages#leaveapprove"
end
