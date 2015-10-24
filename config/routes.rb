Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"

  resources :users do
    resources :listings
  end
end
