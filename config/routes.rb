Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get 'sessions/new'
  resources :users
  get '/api/users' => 'users#api_index'
  resources :microposts, only: [:index, :create, :destroy]
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  root 'microposts#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
