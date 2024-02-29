Rails.application.routes.draw do
  devise_for :users
  root 'bookings#new'

  resources :bookings, only: [:new, :create, :index]
end
