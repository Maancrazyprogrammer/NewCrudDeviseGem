Rails.application.routes.draw do
  devise_for :users
  root "employees#index"

  resources:employees
  
  
  get "/home" => "home#index"
  get "/dashboard" => "dashboard#homePage"
  get "dashboard/profile"

  get "home/about"
  get "dashboard/homePage"
  get "/login" => "dashboard#login"
  get "dashboard/signUp"
end
