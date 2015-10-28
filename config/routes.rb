Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :listings
  end

  resources :neighborhoods do
    resources :listings
  end
  
  root to: "neighborhoods#index"
end
