Rails.application.routes.draw do
  resources :events
  resources :users

  post '/register', to: 'registrations#create'
  get '/registrations', to: 'registrations#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
