Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#homepage"

  devise_for :customers
  resources :orders, except: [:destroy]
  resource :customer do
    resource :cart, only: [:show, :create]
  end
  resources :foodtrucks do
    resources :items do
      resources :cart_contents, only: [:show, :new, :create, :destroy]
    end
  end
end
