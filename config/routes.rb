Rails.application.routes.draw do
  root "sessions#new"
  get  '/',        to: 'sessions#new'
  post '/',        to: 'sessions#create'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/privacy', to: 'static_pages#privacy'
  get  '/term',    to: 'static_pages#term'
  get  '/language',to: 'static_pages#language'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  # get    '/login',   to: 'sessions#new'
  # post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  
end
