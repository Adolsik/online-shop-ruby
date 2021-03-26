Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :koszyks
  resources :przedmiots
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  
  root 'przedmiots#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
