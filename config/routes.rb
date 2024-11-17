Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/users" => "users#index"

  get "/exercises" => "exercises#index"

  get "/user/:id" => "users#show"

  get "/exercise/:id" => "exercises#show"

  post "/exercise" => "exercises#create"

  get "/routines" => "routines#index"

  post "/routines" => "routines#create"

   post "users" => "users#create"

   post "/sessions" => "sessions#create"

   post "/hearts" => "hearts#create"

   get "/hearts" => "hearts#index"

   patch "/users" => "users#update"
end
