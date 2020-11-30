Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/confirmation', to:'pages#confirmation'
  # get '/new', to:'reviews#new'
  # get '/show', to: 'reviews#show'

  resources :parking_lots do
    resources :reviews, only: [ :new, :show, :create ]
    resources :vehicles, only: [ :new, :create ]
    resources :bookings, only: [:index, :show, :create, :destroy]
  end
end
