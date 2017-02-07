require 'sidekiq/web'

Rails.application.routes.draw do

  mount Sidekiq::Web => '/sidekiq'
  devise_for :users
  root to: "boards#index"

  resources :boards do
    member do
      post :subscribe
    end
    resources :posts
  end

end
