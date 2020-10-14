Rails.application.routes.draw do
  root 'reviews#index'
  get 'reviews/search'
  resources :reviews do
    resources :comments, only: :create
  end
  devise_for :users
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
end
