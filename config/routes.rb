Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :listings
  end

  resources :neighborhoods, :only => [:index, :show]

  resources :listings, :only => [:show]

  root to: "neighborhoods#index"
end
