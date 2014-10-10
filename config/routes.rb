Rails.application.routes.draw do
  resources :employees

  resources :notifications

  resources :companies

  resources :routes

  resources :tracks

  get 'maps', :to => 'tracks#maps'

  resources :vehicles

  resources :checkpoints

  get 'home/index'

  devise_for :users
  root :to => 'tracks#maps'
end
