Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "home", to: "pages#home"
  get "about", to: "pages#about"

  # Defines the root path route ("/")
  root "pages#home"

  resources :stocks, only: [:index, :show, :create, :destroy]
  devise_for :users

end
