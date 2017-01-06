Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :favorites
  resources :photos
  resources :albums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  get '/portfolio' => 'pages#portfolio'
  get '/contact' => 'pages#contact'
  get '/weddings' => 'pages#weddings'
  get '/engagements' => 'pages#engagements'
  get '/events' => 'pages#events'
  get '/pets' => 'pages#pets'
  get '/portraits' => 'pages#portraits'

end
