Rails.application.routes.draw do
<<<<<<< Updated upstream
  root 'reviews#index'
  resources :reviews
=======
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
>>>>>>> Stashed changes
end
