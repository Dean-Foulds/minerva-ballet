Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  match "/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unacceptable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  resources :events
  get 'pages/about', to: 'pages#about', as: :about
  get 'pages/gallery', to: 'pages#gallery', as: :gallery
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
  root to: 'pages#about'
  devise_for :users
  resources :users
end
