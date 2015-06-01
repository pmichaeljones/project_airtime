Rails.application.routes.draw do

  root to: 'pages#front'

  get 'about-chris', to: 'pages#about-chris', as: 'about_chris'
  get 'faq', to: 'pages#faq'
  get 'important-information', to: 'pages#important-info'
  get 'sponsorship', to: 'pages#sponsor-info'
  get 'make-donation', to: 'pages#donation-info'
  get 'volunteer', to: 'pages#volunteer-info'

end
