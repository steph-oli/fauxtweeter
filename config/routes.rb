Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :tweets, only: [:new, :create]
  resources :tweets, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
