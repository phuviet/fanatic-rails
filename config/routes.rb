Rails.application.routes.draw do
  resources :brands, only: [:index]
  resources :comments
  resources :orders, only: [:create, :index]
  resources :categories, only: [:index]
  resources :products, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :update]
  resources :shops, only: [:show, :index]
  resources :search, only: [:index]
  resources :history, only: [:index]
  resources :session, only: [:create, :destroy]
  resources :rating, only: [:update]
  resources :omni_auth, only: [:create]
  resources :confirm_user, only: [:create]
  resources :recommend_products
  resources :shop_products, only: [:index]
  require 'sidekiq/web'
  # ...
  mount Sidekiq::Web, at: '/sidekiq'
  # match '/auth/:provider/callback', to: 'omni_auth#create', via: [:get, :post]
  # match 'auth/failure', to: redirect('/'), via: [:get, :post]
end
