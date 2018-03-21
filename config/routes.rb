Rails.application.routes.draw do
  devise_for :users, path: '/users', controllers: {
  sessions: 'users/sessions',
  passwords: 'users/passwords',
  registrations: 'users/registrations'
}
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "users#index"

    get '/users/supplier_signup', to:'users#supplier_signup', as:'supplier_signup'
end
