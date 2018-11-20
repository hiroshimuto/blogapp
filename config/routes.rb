Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  get "posts" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts" => "posts#create"
end
