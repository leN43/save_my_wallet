Rails.application.routes.draw do

  root to: "pages#home"
  devise_for :users

  resources :cities, only: %i[show update edit new create]
  resources :challenges, only: %i[index show] # do
    # resources :user_game, only: %i[new create destroy]
  # end
  resources :expenses
  resources :user_game # , only: %i[index show destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
