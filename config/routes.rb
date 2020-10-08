Rails.application.routes.draw do
  resources :comments, only: [:index, :show, :create, :destroy]
  resources :animals, only: [:index, :show, :first]
    get '/first', to: 'animals#first'
  resources :users, only: [:index, :show]
end
