Given(/^I am on the homepage$/) do
  visit '/'
  # save_and_open_page
end

When(/^I fill out my name$/) do
	fill_in("player_name", :with => "Izzy")
end

When(/^Press the submit button$/) do
  	click_button('Submit')
end

When(/^Press the "(.*?)" button$/) do |button_name|
	click_button(button_name)
end

Then(/^I should be asked to place some ships$/) do
	expect(page).to have_content("Please select the coordinates and orientation for your ships")
end

Given(/^I have registered$/) do
	visit '/'
	step("I fill out my name")
	click_button('Submit')
end

Given(/^I have entered ship coordinates$/) do
	fill_in 'ship_one', with: 'a1'
	select('vertical', :from => 'ship_one_orientation')
	fill_in 'ship_two', with: 'b1'
	select('vertical', :from => 'ship_two_orientation')
	fill_in 'ship_three', with: 'c1'
	select('vertical', :from => 'ship_three_orientation')
	fill_in 'ship_four', with: 'd1'
	select('vertical', :from => 'ship_four_orientation')
	fill_in 'ship_five', with: 'e1'
	select('vertical', :from => 'ship_five_orientation')
end

Given(/^I have clicked the "(.*?)" button$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should wait for another player to join$/) do
  pending # express the regexp above with the code you wish you had
end





