Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "bookings#new"

  devise_for :users, controllers: {
    sessions: "users/sessions"
  }

  devise_scope :user do
    get "users/sign_out" => "devise/sessions#destroy"
  end

  resources :bookings
  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Custom route for the home page
end
