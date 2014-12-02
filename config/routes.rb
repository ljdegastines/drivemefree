Rails.application.routes.draw do


  get 'static/home'
  get 'static/about'

  root to: "static#home"

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  get "profile", to: "users/profile#show"

  resources :motorcycles do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :show, :edit, :update] do
    resources :comments, only: [:create, :destroy]
  end

end
