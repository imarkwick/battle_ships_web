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

When(/^Press the "(.*?)" button$/) do |arg1|
	click_button(arg1)
end

Then(/^I should be on the put place ships$/) do
  expect(page).to have_content("place ships, Izzy")
end
