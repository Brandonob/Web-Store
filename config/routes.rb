Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do 
    resources :orders, param: :slug
    resources :products, only: [:create, :destroy, :update]
  end

  get '*path', to: 'pages#index', via: :all
end
