Rails.application.routes.draw do
  root 'student#index'
  get '/s/dashboard', to: 'student#index'
  get '/s/my-profile', to: 'student#profile'
end
