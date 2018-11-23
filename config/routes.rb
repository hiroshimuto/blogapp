Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts do
    resources :comments, only: [:new, :create]
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show]
end
