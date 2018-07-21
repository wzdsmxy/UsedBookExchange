Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users
  resources :shoppingcart
  
  get '/list',to:'books#index'
  get '/search', to: 'system#search'
  get '/shoppingcart/create', to: 'shoppingcart#create' 
  get '/book/manage', to: 'books#manage', as: 'manage'
  
  root 'system#index'
end
