Rails.application.routes.draw do

  get 'portfolios/new'
  get 'sessions/new'
  get 'users/new'
  root 'pages#index'
  get 'pages/help'
  
 
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :portfolios
  
end

