Rails.application.routes.draw do

  root to: 'pages#front'

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
