Rails.application.routes.draw do
  devise_for :users
  devise_for :admins

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  
  root 'sessions#welcome'
  resources :powers
  resources :trainings
  resources :masters
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
