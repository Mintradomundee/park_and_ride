Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :parking_lots do
  end
end
