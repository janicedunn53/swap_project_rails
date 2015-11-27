Rails.application.routes.draw do
  get 'static/about'

  devise_for :users

  resources :neighborhoods, :only => [:index, :show] do
    resources :users, :only => [:index, :show]
  end

  resources :users, :only => [] do
    resources :listings, :except => [:index]
  end

  resources :listings, :only => [:index]

  root to: "neighborhoods#index"
end
