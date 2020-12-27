Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/problems" => "problems#index"
    post "/problems" => "problems#create"
    get "/problems/:id" => "problems#show"
    get "/favorites" => "favorites#index"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
