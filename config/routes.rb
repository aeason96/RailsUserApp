Rails.application.routes.draw do
  resources :users
  get 'static_pages/home'
  get 'static_pages/help'
  root 'users#index'
end
