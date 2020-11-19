Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals do
    resources :images, only: [ :index, :new, :create ]
  end
  resources :images, only: [ :show, :edit, :update, :destroy ]
  resources :contacts, only: [ :new, :create ]
end
