Rails.application.routes.draw do
  resources :master_subscriptions
  resources :master_days
  resources :master_mealtypes
  resources :master_categories
  devise_for :users
  resources :roles
  resources :users
  root to: "users#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
