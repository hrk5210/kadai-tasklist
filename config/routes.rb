Rails.application.routes.draw do
  root to: 'tasks#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'

# get 'users/index'
# get 'users/show'
# get 'users/new'
# get 'users/create'
#   root to: 'toppages#index'
# 
#   get 'signup', to: 'users#new'

  resources :users, only: [:new, :create]
  
  resources :tasks
end
