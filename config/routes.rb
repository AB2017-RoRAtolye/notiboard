Rails.application.routes.draw do
  root to: "boards#index"

  get "boards", to: "boards#index"
  get "boards/new", to: "boards#new"
  post "boards", to: "boards#create"
  get "boards/:id", to: "boards#show", as: :board
end
