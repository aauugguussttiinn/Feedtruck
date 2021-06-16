Rails.application.routes.draw do
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "foodtruck#index"

  resources :orders, except: [:destroy]
  resource :customer
  resources :foodtrucks do
    resources :items
  end
end