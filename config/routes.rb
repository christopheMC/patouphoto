Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :themes do
    resources :images, only: [ :new, :create ]
  end
  resources :images, only: [ :destroy ]
  resources :contacts, only: [ :new, :create, :index, :edit, :update ]
  resources :livredors, only: [ :new, :create, :index ]
  resources :articles
end
