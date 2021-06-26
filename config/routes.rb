Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#homepage"
  get 'team', to: 'static_pages#team'
  get 'contact', to:'static_pages#contact'
  get 'cgv', to:'static_pages#cgv'
  get 'faq', to:'static_pages#faq'
  get 'jobs', to:'static_pages#jobs'

  devise_for :customers

  resource :cart, only: [:show, :create, :destroy] do
    resources :cart_contents, only: [:show, :new, :create, :destroy]
  end


  resource :customer do
    resources :orders, except:
  end
  resources :foodtrucks do
    resources :votes, only: [:show, :create]
    resources :items do
    end
  end

  namespace :myfoodtruck do
    root 'dashboards#show'
    devise_for :foodtrucks
    resource :dashboard, only: [:show]
    resource :foodtruck, only: [:show, :edit, :update, :destroy] do
      resources :items
      resources :orders, only: [:index, :show, :update, :edit]
    end
  end

end