Rails.application.routes.draw do
  root 'sessions#welcome'
  
  devise_for :users
  devise_for :admins

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  resources :masters do 
    resources :trainings, only: [:index, :show]
  end
  resources :trainings do 
    resources :powers, only: [:index, :show]
  end
  resources :powers
  resources :users
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
