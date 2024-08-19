Rails.application.routes.draw do
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  
  root "welcome#index"
  get "up" => "rails/health#show", as: :rails_health_check
  get "/cards", to: "cards#index"
  get "/users", to: "users#index"
  get "/columns", to: "columns#index"
  get "home", to: "home#index"
  
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"




  resources :users, only: [:new, :create, :show] do
    resources :cards
    
    resources :user_assigns
  end
  resources :columns
  
  # Defines the root path route ("/")
  # root "posts#index"
end
