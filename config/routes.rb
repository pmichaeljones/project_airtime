Rails.application.routes.draw do

  root to: 'pages#front'

  get '/about-chris' to: 'pages#about-chris'

end
