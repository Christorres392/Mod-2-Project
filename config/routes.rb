Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :destinations, only: [:index, :new, :create, :show]
  resources :entertainments, only: [:index, :show] 
  resources :restaurants, only: [:index, :show]

  resources :restaurant_reviews
  resources :entertainment_reviews

  resources :users, only: [:new, :create, :show, :edit, :update]

end
