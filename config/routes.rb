Rails.application.routes.draw do

  resources :users
  resources :attractions

  root 'application#index'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/ride' => 'rides#create'

end
