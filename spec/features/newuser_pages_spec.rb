require 'rails_helper'

describe "the new user process" do
  it "creates a user in who uses the right password" do
    visit 'signup'
    fill_in 'Name', :with => 'user'
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Sign Up'
    expect(page).to have_content 'Thank you'
  end

  it "gives a user an error who does not fill in a name" do
    visit 'signup'
    fill_in 'Name', :with => ''
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Sign Up'
    expect(page).to have_content 'invalid'
  end
end
