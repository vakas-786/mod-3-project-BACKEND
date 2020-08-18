Rails.application.routes.draw do
  resources :comments
  # , only: [:index, :show]
  resources :animals
  # , only: [:index, :show] 
  resources :users
end
