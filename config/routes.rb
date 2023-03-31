# config/routes.rb
Rails.application.routes.draw do
  resources :join_uhs, only: [:create, :destroy]
  resources :hunts, only: [:create, :destroy, :index]
  resources :users, only: [:index, :create, :destroy, :show, :update]
  # route to test your configuration

  post "/signup", to: "users#create"
  get "/auth", to: "users#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end