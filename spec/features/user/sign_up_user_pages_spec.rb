require 'rails_helper'

describe 'the user signup process' do
  before do
    @user = FactoryGirl.create(:user)
  end

  it 'allows a new user to sign up' do
    visit new_user_registration_path
    fill_in 'Username', :with => 'Luke'
    fill_in 'Email', :with => 'skywalker@sw.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    fill_in 'Neighborhood', :with => 'Laurelhurst'
    find('input[type="submit"]').click
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end

  it 'allows view of an individual user' do
    visit user_path(@user)
    expect(page).to have_content @user.username
  end
end
