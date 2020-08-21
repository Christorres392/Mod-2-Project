Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :destinations, only: [:index, :new, :create]
  resources :entertainments, only: [:show] 
  resources :restaurants
  resources :users, only: [:new, :create, :show, :edit, :update]

end
