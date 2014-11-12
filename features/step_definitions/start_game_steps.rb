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

Then(/^I should wait for another player to join$/) do
	expect(page).to have_content("Waiting for player 2 to join the game")
end
