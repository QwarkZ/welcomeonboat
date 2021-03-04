Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dashboard, only: :index
  resources :boats , only: :index
  resources :boats , only: :show do
    resources :bookings, only: [:new, :create]
  end
  namespace :owner do
    resources :boats , only: [:new, :create]
    resources :bookings, only: [:index, :update, :show]
  end
  namespace :renter do
    resources :bookings, only: [:index, :update, :show]
  end
end
