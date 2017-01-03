Rails.application.routes.draw do
  devise_for :users
  root "albums#index"
  resources :users
  resources :favorites
  resources :photos
  resources :albums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end