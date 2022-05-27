Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/", :controller => "posts", :action => "index"
  get "/login", :controller => "sessions", :action => "new"
  get "/logout", :controller => "sessions", :action => "destroy"

  resources "posts"
  resources "sessions"
  resources "users"
  # Defines the root path route ("/")
  # get "/", :controller => "tacos", :action => "index"
end
