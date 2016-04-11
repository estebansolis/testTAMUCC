Given(/^the following suits exist:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.hashes.each do |article|
    Apparel.create(:Apparel_ID => article['Apparel_ID'], :Sex => article['Sex'], :Article => article['Article'], :Size => article['Size'], :Status => article['Status']);
  end 
end


When(/^select "([^"]*)" to "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I select "([^"]*)" to  "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I press search$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I expect to be on the available page for "([^"]*)", "([^"]*)", and "([^"]*)"$/) do |arg1, arg2, arg3|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I expect to see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I expect not to see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I expect to be on the available page for "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I expect to be on the available page for "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end
