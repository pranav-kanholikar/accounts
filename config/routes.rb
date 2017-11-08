Rails.application.routes.draw do
  get 'sessions/new'

  post 'sessions/create'

  get 'sessions/delete'

  resources :logins
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
