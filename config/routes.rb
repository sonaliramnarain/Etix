Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'registration_successful', to: 'pages#registration_successful'
  resources :car_registrations do
    get 'declaration_successful', to: 'pages#declaration_sucessful'
    resources :declarations
  end
  get 'generalquerie_successful', to: 'pages#generalquerie_sucessful'
  resources :general_queries

    get 'fine_successful', to: 'pages#fine_sucessful'
  resources :fines
  get 'legislation', to: 'pages#legislation'
  get 'dashboards/:user_id', to: 'dashboards#show', as: 'dashboard_analyst'
  get 'dashboards/:user_id', to: 'dashboards#index', as: 'dashboard_user'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
