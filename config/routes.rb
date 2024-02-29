Rails.application.routes.draw do
  root 'bookings#new'
  get "up" => "rails/health#show", as: :rails_health_check

  resources :bookings, only: [:new, :create, :index]
end
