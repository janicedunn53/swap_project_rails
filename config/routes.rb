Rails.application.routes.draw do
  devise_for :users


  resources :neighborhoods, :only => [:index, :show] do
    resources :users, :only => [:index, :show]
  end

  resources :users, :only => [:index, :show] do
    resources :listings
  end

  root to: "neighborhoods#index"
end
