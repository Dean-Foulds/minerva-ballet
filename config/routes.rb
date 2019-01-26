Rails.application.routes.draw do
  get 'pages/about', to: 'pages#about', as: :about
  get 'pages/members', to: 'pages#members', as: :members
  get 'pages/cookie_eu', to: 'pages#cookie_eu', as: :cookie_eu
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
