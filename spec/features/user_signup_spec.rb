require 'rails_helper'

describe 'User can sign up' do
  scenario 'User visits sign up page' do

    visit '/sign-up'

    fill_in 'user[email]', :with => "kerry@email.com"
    fill_in 'user[password]', :with => "password"
    fill_in 'user[password_confirmation]', :with => "password"

    click_button 'Sign Up'

    expect(page).to have_content("Sign Out")
  end
end
