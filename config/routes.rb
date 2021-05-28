Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

   resources :brands, only: [:index, :new, :create] do
    resources :campaigns, except: :index
   end
   resources :influencers, only: [:index, :show, :new, :create]
   resources :campaigns, only: :index








  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :brands, only: [:index, :show] do
  #   resources :campaigns, only: [:new, :create]
  # end
  #resources :campaign, only: :destroy
end
