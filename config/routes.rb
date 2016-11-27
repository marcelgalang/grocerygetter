Rails.application.routes.draw do
  get 'items/create'

  resources :lists do
    resources :items
  end

  resources :users

  # roots
  root "static_pages#home"

  # sessions
  get "/signin", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"



end
