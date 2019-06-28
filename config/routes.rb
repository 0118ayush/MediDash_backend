Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :doctors, only: [:index, :show]
    resources :appointments, only: [:index, :show]
    resources :patients, only: [:index, :show]

    post "/signin", to: "doctors#signin"
    get "/validate", to: "doctors#validate"
    get "/user", to: "doctors#user"
    get "/appointments", to: "doctors#appointments"
    get "/patients", to: "doctors#patients"

end
