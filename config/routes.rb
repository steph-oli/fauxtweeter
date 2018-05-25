Rails.application.routes.draw do
  get 'pages/secret'
  resources :users, only: [:create, :index, :show]
  resources :tweets, only: [:new, :create, :index]
  resources :tweets, only: [:new, :create, :show]

  # get "users#index"
  root to: 'users#new'
  get 'users/new' => 'users#new', as: :new_user
  # post 'users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'users#create'

  # post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
