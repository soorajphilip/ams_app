Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }

  authenticated :user do
    root 'student#index', as: :root
  end

  unauthenticated :user do
    root 'home#index', as: :unauthenticated
  end

  get '/s/dashboard', to: 'student#index'
  get '/s/my-profile', to: 'student#profile'

  namespace :student, path: '/s' do
    resources :assignments
    resources :attendance, as: 'attends'
  end

  namespace :admin, path: '/a' do
    resources :dashboard
  end
end
