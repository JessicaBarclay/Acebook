require 'rails_helper'
require 'web_helpers'

RSpec.feature "Sessions",  type: :feature do

  scenario "signs up the user", :type => :feature do
    sign_up
    page.should have_content("Welcome! You have signed up successfully.")
  end

  scenario "signs in the user", :type => :feature do
    sign_up
    click_on("Log Out")
    log_in
    page.should have_content("Logged in successfully.")
  end

  scenario "signs out the user", :type => :feature do
    sign_up
    click_on("Log Out")
    page.should have_content("Logged out successfully.")
  end
end
