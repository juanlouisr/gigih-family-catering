# frozen_string_literal: true

Rails.application.routes.draw do
  # resources :order_details
  resources :orders
  resources :customers
  # resources :menu_categories
  resources :menus
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'orders#index'
end
