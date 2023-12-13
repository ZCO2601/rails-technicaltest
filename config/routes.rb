Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "listings", to: "listings#index"
  get "listings/:id", to: "listings#show"
  get "listings/new", to: "listings#new"
  post "listings", to: "listings#create"
  get "listings/:id/edit", to: "listings#edit"
  patch "listings/:id", to: "listings#update"
  delete "listings/:id", to: "listings#destroy"





end
