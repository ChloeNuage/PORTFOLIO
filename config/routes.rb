Rails.application.routes.draw do
  root "pages#home" # Page d'accueil
  resources :contacts, only: [:new, :create]
  get 'thank_you', to: 'contacts#thank_you'
  get 'contact', to: 'contacts#new', as: 'contact'

  # Pages principales
  get "about", to: "pages#about", as: "about"
  get "projects", to: "pages#projects", as: "projects"

  # Pages spécifiques des projets
  get "projects/spark", to: "projects#spark", as: "spark"
  get "projects/grands", to: "projects#grands", as: "grands"
end
