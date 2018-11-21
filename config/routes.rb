Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  get "posts" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts" => "posts#create"
  get "users/:id" => "users#show"
  delete "posts/:id" => "posts#destroy"
  get "posts/:id/edit" => "posts#edit"
  patch "posts/:id" => "posts#update"
  get 'posts/:id' => 'posts#show'
end
