# frozen_string_literal: true

Rails.application.routes.draw do
  
  root 'application#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#new'

  resources :leases
  resources :properties do
    resources :leases
  end

  resources :properties

  resources :property_managers

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
