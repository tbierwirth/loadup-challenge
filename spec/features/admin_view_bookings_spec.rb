require 'rails_helper'

RSpec.feature "AdminViewBookings", type: :feature do
  let!(:admin) { FactoryBot.create(:user) }
  let!(:booking) { FactoryBot.create(:booking) }

  before do
    login_as(admin, scope: :user)
  end

  scenario 'Admin can view all bookings' do
    visit bookings_path

    expect(page).to have_content(booking.first_name)
    expect(page).to have_content(booking.animal_name)
  end
end
