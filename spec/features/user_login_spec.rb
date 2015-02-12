require 'rails_helper'

describe 'User can login' do

  before :each do
     @user = User.create(email: "da@email.com", password: "password")
  end

  scenario 'User can login' do

    visit '/sign-in'

    fill_in 'Email', :with => "da@email.com"
    fill_in 'Password', :with => "password"

    click_button 'Sign In'

    expect(page).to have_content("Sign Out")

  end
end
