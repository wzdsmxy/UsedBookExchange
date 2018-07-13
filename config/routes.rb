Rails.application.routes.draw do
  devise_for :users
  resources :books
  get '/list',to:'books#index'
  get '/search', to: 'system#search'
  root 'system#index'
end
