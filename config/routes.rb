Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  get 'static/home'
  get 'static/about'

  root to: "static#home"

  get "profile", to: "users/profile#show"

  get 'motorcycles/search', as: 'motorcycles_search'

  resources :motorcycles do
    resources :bookings, only: [:new, :create]
     resources :photos, only: [:new, :create]
  end

  resources :bookings, only: [:index, :show, :edit, :update] do
    resources :comments, only: [:create, :destroy]
  end

end
