Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"

  resources :neighborhoods

  resources :users do
    resources :listings
  end
end
