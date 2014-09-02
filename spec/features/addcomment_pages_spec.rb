require 'rails_helper'

describe "the comment adding process" do
  it "adds a comment to a link " do
    visit 'login'
    user = User.create(:name => 'user', :email => 'user@example.com', :password => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    click_on("New Link")
    fill_in 'Link', :with => 'Robot Wars VII'
    fill_in 'Date', :with => '10-10-2015 12:30'
    click_on("Create Link")
    click_on("Add Comment")
    fill_in 'Comment', :with => 'Wow'
    click_button 'Create Comment'
    expect(page).to have_content 'Wow'
  end
end

