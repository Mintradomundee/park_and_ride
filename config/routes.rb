Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :parking_lots, only: [:new, :show, :create]
end
