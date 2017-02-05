Rails.application.routes.draw do
  get "boards", to: "boards#index"
  get "boards/new", to: "boards#new"
  post "boards", to: "boards#create"
end
