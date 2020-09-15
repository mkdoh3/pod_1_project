# frozen_string_literal: true

Rails.application.routes.draw do
  resources :leases
  resources :properties do
    resources :leases
  end

  resources :property_managers

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
