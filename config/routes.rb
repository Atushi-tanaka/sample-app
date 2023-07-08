Rails.application.routes.draw do
  root 'static_pages#top'
  
  get 'posts/index'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
  get '/:user_id/users', to: 'users#index'
  get 'about', to: 'home#about'
  get 'posts/new', to: 'posts#new'
  post 'posts/create', to: 'posts#create'
  get 'posts/index', to: 'posts#index'
  get 'posts/:id', to: 'posts#show', as: :post
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post

  resources :users
  resources :tasks, only: [:index, :new, :create]
end
