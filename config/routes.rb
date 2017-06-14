Rails.application.routes.draw do

  root "home#index"

  # #session
  get "/login" => "session#new"
  post "/login" => "session#create"
  post "/login" => "session#show"
  delete "/logout" => "session#destroy"
  get "/register" => "users#new"

  get "/posts/:code" => "posts#show"

  resources :sessions
  resources :users
  resources :pages
  resources :posts
  resources :home

end
