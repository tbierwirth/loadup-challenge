Rails.application.routes.draw do
  devise_for :users
  root 'bookings#new' # Sets the new booking page as the main landing page

  resources :bookings, only: [:new, :create, :index] # Ensure this line exists
  # The `resources :bookings` line automatically creates the 'bookings_path' among other route helpers
end
