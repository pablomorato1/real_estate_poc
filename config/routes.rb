Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    mount Avo::Engine, at: Avo.configuration.root_path
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'dashboard#show'

  resources :promotions, only: %i[index]
  resources :wallet, only: %i[index]
  resources :portfolio, only: %i[index]
  resources :profile, only: %i[index]
  resources :help, only: %i[index]
  resources :properties, only: %i[show]
end
