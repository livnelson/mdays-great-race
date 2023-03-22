# config/routes.rb
Rails.application.routes.draw do
  resources :join_uhs, only: [:create, :destroy]
  resources :hunts, only: [:create, :destroy, :index]
  resources :users, only: [:create, :destroy, :show, :update]
  # route to test your configuration
  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end