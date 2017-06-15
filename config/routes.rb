Rails.application.routes.draw do

  root "home#index"

  # #session
  get "/login" => "session#new"
  post "/login" => "session#create"
  post "/login" => "session#show"
  delete "/logout" => "session#destroy"
  get "/register" => "users#new"

  resources :posts
  get "/posts/:code" => "posts#show"
  post "/users/:id/add_token" => "users#add_token"
  get "/search_posts" => "posts#search_posts"
  resources :sessions
  # get "/users/insta" => "users#get_insta_access_code"
  resources :users
  resources :pages
  resources :home

end
