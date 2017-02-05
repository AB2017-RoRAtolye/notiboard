Rails.application.routes.draw do
  root to: "boards#index"

  get "boards", to: "boards#index"
  get "boards/new", to: "boards#new"
  post "boards", to: "boards#create"
  get "boards/:id", to: "boards#show", as: :board
  get "boards/:id/edit", to: "boards#edit", as: :edit_board
  patch "boards/:id", to: "boards#update"
end
