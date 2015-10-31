Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :listings, module: :users
  end

  resources :neighborhoods do
    resources :listings, module: :neighborhoods
  end

  root to: "users#index"
end
