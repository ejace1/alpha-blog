Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'pages#home'
  get 'more', to: 'pages#more'
  
  resources :articles
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  # or:
  # post 'users', to: 'users#create'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :categories, except: [:destroy]
  
  
end