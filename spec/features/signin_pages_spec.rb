require 'rails_helper'

describe "the signin process" do
  it "signs a user in who uses the right password" do
    visit 'login'
    user = User.create(:name => 'user', :email => 'user@example.com', :password => 'password')

    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    expect(page).to have_content 'Logged'
  end

  it "gives a user an error who uses the wrong password" do
    visit '/sessions/new'
    user = User.create(:email => 'user@example.com', :password => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'wrong'
    click_button 'Log In'
    expect(page).to have_content 'invalid'
  end
end
