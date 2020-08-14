Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "articles#index"

  resources :favorites, only: [:create, :destroy]

  resources :articles do
    collection do
      post :confirm
      patch :confirm
    end
  end

  resources :articles do
    member do
      post :confirm
      patch :confirm
    end
  end
end
