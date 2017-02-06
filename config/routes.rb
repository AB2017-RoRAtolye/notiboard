Rails.application.routes.draw do
  devise_for :users
  root to: "boards#index"

  resources :boards do
    member do
      post :subscribe
    end
  end


end
