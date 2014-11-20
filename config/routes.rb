Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :trips, :defaults => { :format => 'json' } do
        collection do
          get 'routes'
          get 'vehicles'
          post 'start'
          post 'end'
        end
      end
      resources :authentication do
        post "auth", :to => "authentication#authenticate"
      end
    end
  end

  resources :tracks

  resources :vehicles do
    member do
      get :qrcode
    end
  end

  resources :employees

  resources :notifications

  resources :companies

  resources :routes do
    resources :checkpoint
  end

  resources :trips do
    resources :tracks, only: [:new, :create]
  end

  resources :tracks, only: [:show,:index] do
    collection do
      get 'search'
    end
  end

  get 'maps', :to => 'tracks#index'

  get 'home/index'

  devise_for :users
  root :to => 'tracks#index'
end