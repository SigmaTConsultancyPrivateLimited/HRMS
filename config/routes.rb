Rails.application.routes.draw do
  resources :reports
  resources :payslips
  resources :leave_statuses
  resources :leave_allocation_requests
  resources :job_contracts
  resources :job_applicant_statuses
  resources :job_applicant_profiles
  resources :contracts
  resources :employees
  resources :books
  
  #active admin devise
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  #devise login page
  root "pages#home"
  devise_for :users
  

  # root "pages#leaveapprove"
end
