Rails.application.routes.draw do
  resources :books
  
  get '/search', to: 'system#search'
  
  root 'system#index'
end
