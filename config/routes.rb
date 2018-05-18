Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :tweets, only: [:new, :create, :index]
  resources :tweets, only: [:new, :create, :show]

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
