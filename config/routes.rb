Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#maintenance'
  resources :order, only: [:new, :create]
    get 'about',         to: 'pages#about'
    get 'competences',   to: 'pages#competences'
    get 'materiel',      to: 'pages#materiel'
    # get 'renseignement', to: 'orders#new'
    # post 'renseignement', to: 'orders#create'
    get 'devis',         to: 'pages#devis'
end
