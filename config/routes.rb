Rails.application.routes.draw do
  root 'reviews#index'
  get 'reviews/search'
  resources :reviews do
    resources :comments, only: :create
  end
  
  devise_for :users
  
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  resources :relationships, only: [:create, :destroy]

end
