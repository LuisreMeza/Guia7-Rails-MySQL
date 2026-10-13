require 'rails_helper'

feature "User management" do
  scenario "Create a new user account successfully" do
    visit new_user_path
    fill_in "Name", with: "Pedro"
    fill_in "Password", with: "12345678"
    fill_in "Email", with: "pedro@gmail.com"
    click_button "Create User"
    expect(page).to have_text("User was successfully created")
  end

  scenario "User is on index page and clicks Back" do
    visit new_user_path
    click_link "Back"
    expect(page).to have_content("Users")
  end
end