Rails.application.routes.draw do
  # get 'items/create'
  #
  # resources :lists do
  #   resources :items
  # end
  #
  resources :users
  #
  # # roots
  # root "static_pages#home"
  #
  # # sessions
  # get "/signin", to: "sessions#new"
  # post "/sessions/create", to: "sessions#create"
  # delete "/signout", to: "sessions#destroy"


  get '/auth/facebook/callback' => 'sessions#create'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get 'items/create'

  resources :lists do
   resources :items
  end

  root 'lists#index'

end
