Rails.application.routes.draw do
  resources :users, only: [:show]
  resources :gyms
  resources :admins, only: [:create]
  get '/current_admin', to: 'application#current_admin'
  get '/profile', to: 'admins#profile'
  post '/login', to: 'auth#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end