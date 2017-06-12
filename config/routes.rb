Rails.application.routes.draw do

  root "home#index"

  # CREATE
  get "/users/new" => "users#new"
  post "users/new" => "users#new"
  get "/posts/new" => "posts#new"
  post "posts/new" => "posts#new"

  #session
  get "/login" => "session#new"
  post "/login" => "session#create"
  post "/login" => "session#show"
  delete "/logout" => "session#destroy"
  get "/register" => "users#new"

  # READ
  get "home/index"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  get "posts/index" => "posts#index"
  get "posts/:id" => "posts#show"

  # UPDATE
  get "/users/:id/edit" => "users#edit"
  patch "/users/:id" => "users#update"
  get "/posts/:id/edit" => "posts#edit"
  patch "/posts/:id" => "posts#update"

  # DELETE
  delete "posts/:id(.:format)" => "posts#destroy"
  delete "users/:id" => "users#destroy"

  resources :sessions
  resources :pages
  resources :posts
  resources :users
  resources :home

end
