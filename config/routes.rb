Rails.application.routes.draw do

  root "home#index"

  # CREATE
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
  get "posts/index" => "posts#index"
  get "posts/:id" => "posts#show"

  # UPDATE
  get "/posts/:id/edit" => "posts#edit"
  patch "/posts/:id" => "posts#update"

  # DELETE
  delete "posts/:id(.:format)" => "posts#destroy"

  resources :sessions
  resources :users
  resources :pages
  resources :posts
  resources :home

end
