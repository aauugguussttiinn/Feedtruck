Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#homepage"
  get 'team', to: 'static_pages#team'
  get 'contact', to:'static_pages#contact'

  devise_for :customers
  devise_for :foodtrucks,
              path: 'myfoodtruck/foodtrucks',
              controllers: { sessions: 'myfoodtruck/sessions', registrations: 'myfoodtruck/registrations', passwords: 'myfoodtruck/passwords' }
  resource :customer do
    resources :orders, except: [:destroy]
    resource :cart, only: [:show, :create] do
      resources :cart_contents, only: [:show, :new, :create, :destroy]
    end
  end
  resources :foodtrucks do
    resources :items do
    end
  end

  namespace :myfoodtruck do
    root 'myfoodtruck#dashboard'
    resource :dashboard
    resource :foodtruck, only: [:show, :edit, :update, :destroy] do
      resources :items
      resources :orders, only: [:index, :show, :update, :edit]
    end
  end

end
