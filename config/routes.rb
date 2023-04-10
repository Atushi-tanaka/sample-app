Rails.application.routes.draw do
  get 'posts/index'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/users/:user_id/users', to: 'users#index'
  
  resources :users
end
