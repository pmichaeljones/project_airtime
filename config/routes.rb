Rails.application.routes.draw do

  root to: 'pages#front'

  get "/admin", to: "pages#admin"
  post "/admin", to: "pages#admin_login"

  get "/admin/dashboard", to: "dashboard#dashboard_home", as: "dashboard"

  get "resend_admin_password", to: 'notifications#resend_admin_password'

  post "/logout", to: "pages#logout"

  resources :sponsors
  resources :videos

  get 'about-chris', to: 'pages#about-chris', as: 'about_chris'
  get 'faq', to: 'pages#faq'
  get 'important-information', to: 'pages#important-info'

  get 'make-donation', to: 'pages#donation-info'

  get 'sponsorship', to: 'pages#sponsor-info'
  post 'sponsorship_form', to: 'notifications#sponsorship'

  get 'volunteer', to: 'pages#volunteer-info'
  post 'volunteer_form', to: 'notifications#volunteer'

  post 'copilot_form', to: 'notifications#copilot'

end
