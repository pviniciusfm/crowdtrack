Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :trips, :defaults => { :format => 'json' } do
        collection do
          get 'routes'
          get 'vehicles'
          post 'start'
        end
        member do
          post 'end'
        end
      end

      post 'share', :to => "shared_infos#share"
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
    resources :checkpoint do
      post :update_row_order, on: :collection
    end
  end

  resources :trips do
    resources :shared_infos
    resources :tracks, only: [:new, :create]
  end

  resources :tracks, only: [:show,:index] do
    collection do
      get 'search'
    end
  end

  get 'maps', :to => 'tracks#index'

  get 'dashboard', :to => 'dashboard#index'

  get 'home/index'

  devise_for :users
  root :to => 'tracks#index'
end