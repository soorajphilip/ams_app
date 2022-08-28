Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }

  root 'student#index'
  get '/s/dashboard', to: 'student#index'
  get '/s/my-profile', to: 'student#profile'

  namespace :student, path: '/s' do
    resources :assignments
    resources :attendance, as: 'attends'
  end
end
