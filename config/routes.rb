Rails.application.routes.draw do
  root 'reviews#index'
  get 'reviews/search'
  resources :reviews do
    resources :comments, only: :create
  end
  devise_for :users
  resources :users, only: :show
end
