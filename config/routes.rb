Rails.application.routes.draw do
  resources :employees

  resources :notifications

  resources :companies

  resources :routes

  resources :tracks

  resources :vehicles

  resources :checkpoints

  get 'home/index'

  devise_for :users
  root :to => 'home#index'
end
