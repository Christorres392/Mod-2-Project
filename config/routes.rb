Rails.application.routes.draw do
  resources :entertainments, only: [:show] 
end
