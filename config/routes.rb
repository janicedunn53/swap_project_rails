Rails.application.routes.draw do
  root to: "neighborhoods#index"
  get '/about', to: 'static#about'

  devise_for :users

  resources :neighborhoods, :only => [:index, :show] do
    resources :users, :only => [:index, :show]
  end

  resources :users, :only => [] do
    resources :listings, :except => [:index]
  end

  resources :listings, :only => [:index]

end
