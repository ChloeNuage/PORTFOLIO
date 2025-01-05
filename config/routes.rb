Rails.application.routes.draw do
  root "pages#home" # Page d'accueil

  # Pages principales
  get "about", to: "pages#about", as: "about"
  get "projects", to: "pages#projects", as: "projects"
  get "contact", to: "pages#contact", as: "contact"
  post "contact/thank_you", to: "pages#thank_you", as: "thank_you"

  # Pages spécifiques des projets
  get "projects/spark", to: "projects#spark", as: "spark"
  get "projects/grands", to: "projects#grands", as: "grands"
end
