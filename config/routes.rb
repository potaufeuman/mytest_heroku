Rails.application.routes.draw do
  get 'questions/new'

  get 'questions/edit'

  get 'questions/destroy'

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
  delete '/logout',    to: 'sessions#destroy'
  get  '/tester',      to: 'tests#new'
  post '/tester',      to: 'tests#create'
  get  '/mytests',     to: 'tests#my_index'
  get  '/mytests/:id', to: 'tests#my_show'
  get  '/questioner',  to: 'questions#new'
  post '/questioner',  to: 'questions#create'
  resources :users
  resources :account_activations, only: [:edit]
  resources :tests do
    resources :questions
  end
end
