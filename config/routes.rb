Rails.application.routes.draw do
  resources :brands
  resources :comments
  resources :orders
  resources :categories
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :session
  resources :rating, only: [:update]
  resources :omni_auth, only: [:create]
  resources :confirm_user, only: [:create]
  require 'sidekiq/web'
  # ...
  mount Sidekiq::Web, at: '/sidekiq'
  # match '/auth/:provider/callback', to: 'omni_auth#create', via: [:get, :post]
  # match 'auth/failure', to: redirect('/'), via: [:get, :post]
end
