Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }

  authenticated :user do
    root 'student#index', as: :root
  end

  unauthenticated :user do
    root 'home#index', as: :unauthenticated
    get 'about', to: 'home#about'
    get 'pricing', to: 'home#pricing'
    get 'clients', to: 'home#clients'
  end

  namespace :student, path: '/s' do

    resources :profile

    resources :dashboard

    resources :assignments

    resources :attendance, as: 'attends'
  end

  namespace :admin, path: '/a' do

    resources :dashboard
  end
end
