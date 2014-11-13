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

When(/^I have entered ship coordinates$/) do
	select('Aircraft Carrier', :from => 'ship_type')
	select('A', :from => 'vertical_coordinate')
	select('1', :from => 'horizontal_coordinate')
	select('South', :from => 'direction')
end

Given(/^I have clicked the "(.*?)" button$/) do |arg1|
	click_button('place ship')
end

Then(/^I should wait for another player to join$/) do

end





