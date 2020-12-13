Rails.application.routes.draw do
  
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'

  resources :animals
  resources :appointments
  resources :veterinarians
  resources :services
end
