Rails.application.routes.draw do
  root 'static_pages#top'
  
  get 'posts/index'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
  get '/:user_id/users', to: 'users#index'
  post 'posts/create', to: 'posts#create'
  get 'posts/new', to: 'posts#new'
  get 'posts/:id', to: 'posts#show', as: :post

  resources :users
  resources :tasks, only: [:index, :new, :create]
end
