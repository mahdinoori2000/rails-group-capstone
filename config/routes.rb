Rails.application.routes.draw do
  devise_for :users

  resources :foods
  resources :recipes do
    resources :recipe_foods, only: [:new, :create]
  end
  # General Shopping List
  get 'general_shopping_list', to: 'general_shopping_list#index'

  # Define your root path route ("/")
  root "foods#index"
end
