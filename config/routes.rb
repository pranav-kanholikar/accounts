Rails.application.routes.draw do
  get 'sessions/new'

  post 'sessions/create'

  get 'sessions/delete'
  
  delete 'sessions/log_out'
  resources :logins
  resources :accounts

  namespace :apis do
    resources :accounts
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
