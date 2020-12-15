Rails.application.routes.draw do
  root 'sessions#home'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  match '/auth/google_oauth2/callback', to: 'sessions#create_with_google', via: [:get, :post]
  delete 'logout', to: 'sessions#destroy'

  get 'user/:id/animals/:id/appointments', to: 'appointments#animal_appointment_index'

  resources :users do
    resources :animals
  end
  
  resources :animals do
    resources :appointments
  end

  resources :animals
  resources :appointments
  resources :veterinarians
  resources :services
end
