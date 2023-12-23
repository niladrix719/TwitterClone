Rails.application.routes.draw do
  root "home#index"
  get "/home", to: "home#index"
  post "/home/create", to: "home#create", as: "home_create"
end
