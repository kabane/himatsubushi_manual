Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'contents#index'

  resources :contents, only: [:index, :show]

  namespace :admin do
    resources :contents
    resources :users, only: [:show, :edit, :update]
    resource :accounts, only: [:edit, :update]
  end
end
