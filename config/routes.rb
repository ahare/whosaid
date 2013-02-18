Whosaid::Application.routes.draw do

  root to: "home#index"

  match "login" => "user_sessions#new", as: :login
  match "logout" => "user_sessions#destroy", as: :logout

  resources :users
  resources :user_sessions
  resources :phrases
end
