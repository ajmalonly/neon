Rails.application.routes.draw do
  # get "neon_signs/new"
  # get "neon_signs/create"

  root "neon_signs#new" # Homepage is the sign editor

  resources :neon_signs, only: [:new, :create, :index, :show, :destroy]
  
  # If users are involved
  # devise_for :users  # If using Devise
  resources :users, only: [:show] do
    resources :neon_signs, only: [:index] # User's saved signs
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
