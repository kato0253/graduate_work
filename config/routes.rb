Rails.application.routes.draw do

  get 'address/show'
  root to: 'other_pages#index'

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

  resources :articles do
    resources :comments
  end

  namespace 'api' do
    namespace 'v1' do
      resources :posts
    end
  end
end
