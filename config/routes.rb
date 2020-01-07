Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :properties
  resources :likes
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
