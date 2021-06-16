Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "foodtrucks#index"

  devise_for :customers
  resources :orders, except: [:destroy]
  resource :customer do
    resource :cart, only: [:show]
  end
  resources :foodtrucks do
    resources :items
  end
end