Rails.application.routes.draw do
  resources :entertainments, only: [:index] 
end
