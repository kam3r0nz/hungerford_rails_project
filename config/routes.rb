Rails.application.routes.draw do
  root 'sessions#home'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  get 'admins/signup', to: 'admins#new'
  post 'admins/signup', to: 'admins#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  match '/auth/google_oauth2/callback', to: 'sessions#create_with_google', via: [:get, :post]
  delete 'logout', to: 'sessions#destroy'

  get 'animals/:id/image/upload', to: 'animals#image_upload', as: 'animal_image_upload'

  get 'veterinarians/new', to: 'veterinarians#new'
  post 'veterinarians/new', to: 'veterinarians#create'

  get 'services/new', to: 'services#new'
  post 'services/new', to: 'services#create'

  resources :users, only: [:new, :create, :show]
  resources :animals
  resources :appointments
  resources :veterinarians, only: [:new, :create, :index]
  resources :services, only: [:new, :create, :index]

  resources :users do
    resources :animals do
      resources :appointments
    end
  end

  resources :users do
    resources :animals
  end

  resources :users do
    resources :appointments
  end
  
end