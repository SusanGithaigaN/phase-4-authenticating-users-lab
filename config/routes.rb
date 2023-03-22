Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  # login
  post "/login", to: "sessions#create"
  # retrieve user data
  get "/me", to: "users#show"
  # logging out
  delete "/logout", to: "sessions#destroy"
end
