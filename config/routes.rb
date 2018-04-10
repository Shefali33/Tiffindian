Rails.application.routes.draw do
resources :supplier
  devise_for :users, controllers: {
  sessions: 'users/sessions',
  passwords: 'users/passwords',
  registrations: 'users/registrations'
}
# get 'users/suppliers', to:'suppliers#index'
# resources :users do
#    resources :suppliers
# end
# resources :user_sessions, only: [ :new, :create, :destroy ]
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"
# get 'users/sign_out', to: "users#destroy", as: "logout"
# get 'users/sign_out' => 'users#destroy'
  devise_scope :user do
  get 'users/supplier_signup', to:'users/registrations#supplier_new', as:'new_supplier_signup'
  get '/users/meals', to: 'users#meals'
  get '/users/radiomeal', to: 'users#radiomeal'
  end
  post '/menu_create', to:'users#menu_create'
  resources :users
  resources :menus

end
