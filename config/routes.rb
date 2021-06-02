Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :brands, only: [:index, :new, :create] do
    resources :campaigns, except: :index
  end
  resources :influencers, only: [:index, :show, :new, :create]
  resources :campaigns, only: :index
  resources :matches, only: [:create, :edit, :update]
  get "dashboard", to: "pages#dashboard", as: "dashboard"
  put "decline", to: "matches#decline", as: "decline"
  put "accept", to: "matches#accept", as: "accept"
end
