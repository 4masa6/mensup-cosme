Rails.application.routes.draw do
  root 'reviews#index'
  resources :reviews
  devise_for :users
end
