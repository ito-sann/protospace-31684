Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index', to: 'prototypes#index'
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
  post '/prototypes/new', to: 'prototypes#new'
  resources :users, only: :show
end
