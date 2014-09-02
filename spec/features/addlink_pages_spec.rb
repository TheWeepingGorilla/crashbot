require 'rails_helper'

describe "the link adding process" do
  it "adds a link if a signed-in user inputs one" do
    visit 'login'
    user = User.create(:name => 'user', :email => 'user@example.com', :password => 'password')

    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    click_on("New Link")
    fill_in 'Link', :with => 'Robot Wars VII'
    fill_in 'Date', :with => '10-10-2015 12:30'
    click_on("Create Link")
    expect(page).to have_content 'Robot Wars VII'
  end

  it "does not allow adding a link if not logged in" do
    visit root_url
    click_on('New Link')
    expect(page).to have_content 'Not authorized'
  end
end
