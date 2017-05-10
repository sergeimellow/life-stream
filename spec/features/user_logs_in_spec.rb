# spec/features/user_logs_in_spec.rb
require "rails_helper"
	RSpec.feature "User signs up" do
		scenario "they see the index page" do
		email = "johndoe@example.com"
		password = "123123123"
		visit new_user_registration_path
		fill_in "user_email", with: email
		fill_in "user_password", with: password
		fill_in "user_password_confirmation", with: password
		click_on "Sign up"


		expect(page).to have_content "Welcome! You have signed up successfully."  
	end
end