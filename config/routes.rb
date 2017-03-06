Rails.application.routes.draw do

  resources :calendars

  root 'pages_controller#index'

  resources :users, :notifications, :shifts, :calendars
  resources :user_sessions, only: [:new, :create, :destroy]

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  get 'search' => 'calendars#show', :as => :search

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
