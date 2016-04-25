Given(/^the following students exist:$/) do |table|
  table.hashes.each do |student|
    Student.create(student)
  end
end

When(/^I fill in the "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in(arg1,arg2)
end

Then(/^I expect to see  "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I see the UIN (\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I expect to see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end