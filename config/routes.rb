Whosaid::Application.routes.draw do

  root to: "home#index"

  match "login" => "user_sessions#new", as: :login
  match "logout" => "user_sessions#destroy", as: :logout

  resources :user_sessions
end
