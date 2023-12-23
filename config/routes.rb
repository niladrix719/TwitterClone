Rails.application.routes.draw do
  root "home#index"
  get "/home", to: "home#index"
  post "/home/create", to: "home#create", as: "home_create"
  delete "/home/:id", to: "home#destroy", as: "home_destroy"
  patch "/home/:id", to: "home#update", as: "home_update"
end
