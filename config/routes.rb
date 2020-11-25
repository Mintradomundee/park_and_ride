Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :parking_lots do
    resources :reviews, only: [ :new, :create ]
    resources :vehicles, only: [ :new, :create ]
    resources :bookings, only: [:index, :show, :create, :destroy]
  end
end
