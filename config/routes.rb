Rails.application.routes.draw do

  root 'books#index'

  resources :books
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


end
