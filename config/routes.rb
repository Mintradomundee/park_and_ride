Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/confirmation', to:'pages#confirmation'
  get '/history', to:'pages#history'
  # get '/new', to:'reviews#new'
  # get '/show', to: 'reviews#show'

  resources :parking_lots do
    resources :reviews, only: [ :new, :show, :create ]
    resources :vehicles, only: [ :new, :create ]
    resources :bookings, only: [:index, :show, :create, :destroy]
  end
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
