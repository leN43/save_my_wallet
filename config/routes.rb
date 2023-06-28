Rails.application.routes.draw do

  root to: "pages#home"
  devise_for :users

  resources :cities, only: %i[show update edit destroy]
  resources :challenges, only: %i[index show]
  resources :expenses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
