Rails.application.routes.draw do

  root "home#index"

  get "home/index"

  get "users/index"

  get "posts/index" => "posts#index"
  post "posts/new" => "posts#new"

  resources :posts
  resources :users
  resources :home

end

  # get "/login" => "session#new"
  # post "/login" => "session#create"
  # delete "/logout" => "session#destroy"
  # get "/register" => "users#new"
