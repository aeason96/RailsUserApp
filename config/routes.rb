Rails.application.routes.draw do
  resources :users
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  root 'static_pages#home'
end
