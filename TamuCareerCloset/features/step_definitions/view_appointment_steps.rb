When(/^follow "([^"]*)"$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I expect to be on the appointments page$/) do
   expect(current_path).to eql(appointments_path)
end

And(/^I see the calendar$/) do
  expect(page).to have_content(:class, 'Our Calendar')
end

Then(/^I expect to be on the home page$/) do
  expect(current_path).to eql(home_path)
end

