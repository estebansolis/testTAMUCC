Given(/^am on the home page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^follow "([^"]*)"$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I expect to be on the appoinments page$/) do
   expect(current_path).to eql(appointments_path)
end

Given(/^on the appointments page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I expect to be on the home page$/) do
  expect(current_path).to eql(home_path)
end
