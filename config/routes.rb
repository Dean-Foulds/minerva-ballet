Rails.application.routes.draw do
  resources :events
  get 'pages/about', to: 'pages#about', as: :about
  get 'pages/members', to: 'pages#members', as: :members
  get 'pages/guidelines', to: 'pages#guidelines', as: :guidelines
  get 'pages/cookie_eu', to: 'pages#cookie_eu', as: :cookie_eu
  get '/profile', to: 'profiles#show', as: :profile
  get '/profile/edit', to: 'profiles#edit', as: :edit_profile
  patch '/profile', to: 'profiles#update', as: :update_profile
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
