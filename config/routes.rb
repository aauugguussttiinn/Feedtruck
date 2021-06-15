Rails.application.routes.draw do
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "items#new"

  namespace :customer do
    resources :customers
    resource :customers do 
      resources :orders
    end
  end

  namespace :foodtruck do
    resources :foodtrucks
    resource :foodtrucks do 
      resources :items 
      resources :orders
    end
  end
end