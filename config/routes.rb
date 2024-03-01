Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'bookings#new'

  resources :bookings, only: [:new, :create, :index]
end
