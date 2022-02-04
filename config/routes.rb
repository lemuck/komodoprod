Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  post "send_contact",   to: "pages#send_contact"
    get 'about',         to: 'pages#about'
    get 'competences',   to: 'pages#competences'
    get 'materiel',      to: 'pages#materiel'
    get 'renseignement', to: 'pages#renseignement'
    get 'devis',         to: 'pages#devis'
end
