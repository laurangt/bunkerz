Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/profile", to: "pages#profile"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :bunkers, only: [:index, :new, :create, :destroy, :show] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
  resources :bookings, only: [:destroy]
end
