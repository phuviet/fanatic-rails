Rails.application.routes.draw do
  resources :comments
  resources :orders
  resources :categories
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :session
  resources :omni_auth, only: [:create]
  # match '/auth/:provider/callback', to: 'omni_auth#create', via: [:get, :post]
  # match 'auth/failure', to: redirect('/'), via: [:get, :post]
end
