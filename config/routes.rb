Rails.application.routes.draw do
  root 'sessions#home'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  match '/auth/facebook/callback', to: 'sessions#create_with_fb', via: [:get, :post]
  delete 'logout', to: 'sessions#destroy'

  resources :users do
    resources :animals
  end
  
  resources :animals
  resources :appointments
  resources :veterinarians
  resources :services
end
