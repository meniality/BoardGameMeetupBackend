Rails.application.routes.draw do
  resources :user_meetups
  resources :meetups
  resources :user_boardgames
  resources :boardgames
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
