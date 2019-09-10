Rails.application.routes.draw do
  get 'cart/index'
  get "/welcome", to: "welcome#index"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/login", to: "sessions#destroy", as: "logout"

  get "/cart", to: "cart#index",as: "cart"
  post "/cart", to: "cart#my_cart", as: "my_cart"

  resources :users, except: [:index]
  resources :fruits, only: [:index, :show]
  resources :items, only: [:show]
  resources :smoothies, only: [:index, :show]

  get "/smoothies/:id/make", to: "smoothies#make_smoothie", as: "make_smoothie"

  

end
