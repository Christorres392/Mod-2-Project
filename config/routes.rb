Rails.application.routes.draw do
  get 'restaurant/index'
  get 'restaurant/show'
  resources :entertainments, only: [:show] 
  resources :restaurants
end
