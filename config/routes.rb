Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users

  get '/dashboard', to: 'dashboards#dashboard', as: :dashboard
  resources :cities, except: %i[destroy]
  resources :challenges, only: %i[index show] # do
    # resources :user_game, only: %i[new create destroy]
  # end
  resources :expenses
  resources :user_games # , only: %i[index show destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
