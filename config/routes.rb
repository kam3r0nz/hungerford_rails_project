Rails.application.routes.draw do
  root 'sessions#home'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users
  resources :animals
  resources :appointments
  resources :veterinarians
  resources :services
end
