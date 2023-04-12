Rails.application.routes.draw do
  root 'static_pages#top'
  
  get 'posts/index'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/users/:user_id/users', to: 'users#index'

  resources :users
end
