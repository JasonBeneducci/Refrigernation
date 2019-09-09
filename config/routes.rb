Rails.application.routes.draw do
  get "/welcome", to: "welcome#index"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/login", to: "sessions#destroy", as: "logout"


  resources :users

  resources :fruits, only: [:index, :show]
  resources :items
  resources :smoothies, only: [:index, :show]
  

end
