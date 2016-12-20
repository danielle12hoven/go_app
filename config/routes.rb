Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD

  root to: "home#index"

  resources :home


  get'/new', to: 'home#new', as: :new


  get'/show', to: 'home#show', as: :show


  get'/edit', to: 'home#edit', as: :edit



=======
  resources :home
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 37d6659479d2dcab4aea7fa2430354118a18da10
end
