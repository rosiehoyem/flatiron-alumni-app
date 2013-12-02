require 'spec_helper'

feature 'User management' do
	scenario "sign up alumnus user" do
		alumnus = User.build(:user)

		visit root_path
		click_link 'SIGN UP'
		fill_in 'First Name', with: 'John'
		fill_in 'Last Name', with: 'Doe'
		fill_in 'Email', with: 'newuser@example.com'
		fill_in 'Password', with: a'secret123'
		fill_in 'Re-enter Password', with: 'secret123'
		click_button 'Sign Up'

		visit root_path
		expect{
			click_link 'SIGN UP'
			fill_in 'First Name', with: 'John'
			fill_in 'Last Name', with: 'Doe'
			fill_in 'Email', with: 'newuser@example.com'
			fill_in 'Password', with: 'secret123'
			fill_in 'Re-enter Password', with: 'secret123'
			click_button 'Sign Up'
		}.to change(User, :count).by(1)
		expect(current_path).to eq users_path
		expect(page).to have_content 'Links'
		within 'h1' do
			expect(page).to have_content alumnus.firstname
		end
		expect(page).to have_content 'newuser@example.com'
	end

	scenario "log in alumnus user" do
		alumnus = User.create(
			firstname: 'Aaron',
			lastname: 'Smith',
			email: 'aaron@example.com',
			password: 'password')

		visit root_path
		click_link 'LOGIN'
		fill_in 'Email', with: alumnus.email
		fill_in 'Password', with: alumnus.password
		fill_in 'Re-enter Password', with: alumnus.password
		click_button 'Log In'

		visit root_path
		expect{
			click_link 'LOGIN'
			fill_in 'Email', with: 'aaron@example.com'
			find('#password').fill_in 'Password', with: 'secret123'
			find('#password_confirmation').fill_in 'Password confirmation', with: 'secret123'
			click_button 'Log In'
		}.to change(User, :count).by(1)
		expect(current_path).to eq users_path
		expect(page).to have_content 'New user created'
		within 'h1' do
			expect(page).to have_content 'Users'
		end
		expect(page).to have_content 'newuser@example.com'
	end
end