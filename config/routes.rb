Rails.application.routes.draw do
  namespace :admin do
    resources :products
    resources :categories
  end
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Root path For Users and Store
  root "home#index"

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end

  ## Admin starts here
  get "admin", to: "admin#index"
end
