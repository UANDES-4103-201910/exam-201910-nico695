Rails.application.routes.draw do
  devise_for :models
  get 'home/index'
  root to: 'home#index'
  resources :orders
  resources :users
  resources :products
  resources :shopping_carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
