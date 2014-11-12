Given(/^I am on the homepage$/) do
  visit '/'
  # save_and_open_page
end

When(/^I fill out my name$/) do
	fill_in('player_name', :with => 'Izzy')
end

When(/^Press the submit button$/) do
  	click_button('Submit')
end

When(/^Press the "(.*?)" button$/) do |button_name|
	click_button(button_name)
end

Then(/^I should be asked to place some ships$/) do
	expect(page).to have_content("Please enter the coordinates and orientation of your ships")
end

Given(/^I have registered$/) do
	visit '/'
	step("I register to play the game")
end

Given(/^I have entered ships$/) do
	fill_in 'ship_one', with: 'a1'
	select('vertical', :from => 'ship_one_orientation')
	fill_in 'ship_two', with: 'b1'
	select('vertical', :from => 'ship_two_orientation')
	fill_in 'ship_three', with: 'c1'
	select('vertical', :from => 'ship_three_orientation')
	fill_in 'ship_four', with: 'd1'
	select('vertical', :from => 'ship_four_orientation')
end

# Then(/^I should be asked to place some ships$/) do

# end




