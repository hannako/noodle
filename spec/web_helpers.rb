def sign_up
  visit '/'
  click_link 'Create a Noodle Group'
  fill_in 'Email', with: "admin@gmail.co.uk"
  fill_in 'Password', with: "admin1234"
  fill_in 'Password confirmation', with: "admin1234"
  click_button 'Sign up'
end
