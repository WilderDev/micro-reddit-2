Rails.application.routes.draw do
  root "users#new"

  resources :users, only: [:new, :create, :show]
  resources :communities, only: [:index, :new, :create, :show]
  resources :posts, only: [:index, :new, :create, :show]
  resources :comments, only: [:create]
end
