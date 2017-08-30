Rails.application.routes.draw do
  resources :brands, only: [:index]
  resources :comments
  resources :orders, only: [:create]
  resources :categories, only: [:index]
  resources :products, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :session, only: [:create, :destroy]
  resources :rating, only: [:update]
  resources :omni_auth, only: [:create]
  # match '/auth/:provider/callback', to: 'omni_auth#create', via: [:get, :post]
  # match 'auth/failure', to: redirect('/'), via: [:get, :post]
end
