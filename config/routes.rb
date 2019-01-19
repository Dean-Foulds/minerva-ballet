Rails.application.routes.draw do
  get 'pages/about', to: 'pages#about', as: :about
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
