Rails.application.routes.draw do
  get 'cart/index'
  get "/welcome", to: "welcome#index"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/login", to: "sessions#destroy", as: "logout"

  get "/cart", to: "cart#index",as: "cart"

  resources :users
  resources :fruits, only: [:index, :show]
  resources :items
  resources :smoothies, only: [:index, :show]
  

end
