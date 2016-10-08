require 'rails_helper'

feature 'User Management' do

  context 'Creating an admin account' do

    scenario 'I can sign UP and see the invite users link' do
      visit '/'
      click_link 'Create a Noodle Group'
      fill_in 'Email', with: "admin@gmail.co.uk"
      fill_in 'Password', with: "admin1234"
      fill_in 'Password confirmation', with: "admin1234"
      click_button 'Sign up'
      expect(page).to have_link 'Send Invitation'
    end

    scenario 'I can sign IN and see the invite users link' do
      sign_up
      click_link 'Sign out'
      click_link 'Log in as admin'
      fill_in 'Email', with: "admin@gmail.co.uk"
      fill_in 'Password', with: "admin1234"
      click_button 'Log in'
      expect(page).to have_link 'Send Invitation'
    end

    scenario 'I can log out from anywhere on the site' do
      sign_up
      expect(page).to have_link 'Sign out'
    end
  end

  context 'As an invited user' do

    scenario 'I can log into my account, I can sign out, I cannot invite users' do

      user = create(:user)

      visit '/'
      click_link 'Log in as user'
      fill_in 'Email', with: "jess@test.co.uk"
      fill_in 'Password', with: "123456"
      click_button 'Log in'
      expect(page).to have_content 'Signed in successfully.'
      expect(page).not_to have_link 'Send Invitation'
      expect(page).to have_link 'Sign out'
    end
  end


end
