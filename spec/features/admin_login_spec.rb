require 'rails_helper'
require 'factory_bot'

RSpec.feature "AdminLogin", type: :feature do
  scenario 'Admin logs in successfully' do
    FactoryBot.create(:user)

    visit new_user_session_path
    fill_in 'Email', with: 'admin@admin.com'
    fill_in 'Password', with: 'password'
    click_button 'Sign in'

    expect(page).to have_content 'Signed in successfully.'
  end
end