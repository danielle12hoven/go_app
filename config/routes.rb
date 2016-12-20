Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD

  root to: "home#index"

  resources :home


  get'/new', to: 'home#new', as: :new


  get'/show', to: 'home#show', as: :show


  get'/edit', to: 'home#edit', as: :edit
end
