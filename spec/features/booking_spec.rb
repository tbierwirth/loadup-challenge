require 'rails_helper'

RSpec.feature "Bookings", type: :feature do
  scenario 'User creates a new booking' do
    visit '/'

    fill_in 'First Name', with: 'Tyler'
    fill_in 'Last Name', with: 'Bierwirth'
    fill_in 'Animal Name', with: 'Luna'
    select 'Cat', from: 'Animal Type'
    fill_in 'Hours Requested', with: 5
    fill_in 'Date of Service', with: Date.today.to_s

    click_button 'Book Now'

    expect(page).to have_text('Booking Created!')
  end
end
