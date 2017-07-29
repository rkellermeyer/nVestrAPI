Rails.application.routes.draw do
  resources :roles
  resources :users
  resources :statuses
  resources :funding_rounds
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
