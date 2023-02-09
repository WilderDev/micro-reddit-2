Rails.application.routes.draw do
  root "user#new"

  resources :users, only: [:new, :create, :show]
end
