Rails.application.routes.draw do
  devise_for :users
  root 'student#index'
  get '/s/dashboard', to: 'student#index'
  get '/s/my-profile', to: 'student#profile'
  get '/s/edit-profile', to: 'student#edit_profile'
end
