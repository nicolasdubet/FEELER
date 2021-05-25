Rails.application.routes.draw do

  devise_for :influencers

  devise_for :brands

  root to: 'pages#home'

  resources :influencers, only: [:index, :show, ] do
    resources :matches, only: :new
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :influencers
  resources :brands
  resources :campaigns
  resources :matches, only: [:create, :new :index, :show, :edit, :update]
  resources :activities only: [:index, :show, :edit, :update]
end
