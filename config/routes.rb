Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :doctors, only: [:index, :show]
    resources :appointments, only: [:index, :show, :destroy, :create]
    resources :patients, only: [:index, :show, :create]

    post "/signin", to: "doctors#signin"
    get "/validate", to: "doctors#validate"
    get "/user", to: "doctors#user"
    get "/myappointments", to: "doctors#myappointments"
    get "/mypatients", to: "doctors#mypatients"
    get "/monthlyappointments", to: "appointments#appointment_by_month"
    get "/todaysappointments", to: "appointments#todays_appointments"

end