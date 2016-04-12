Given(/^following suits are rented:$/) do |table|
  table.hashes.each do |article|
    Rental.create(:Apparel_ID => article['Apparel_ID'], :UIN => article['UIN'], :Rental_ID => article['Rental_ID'], :Checkout_Date => article['Checkout_Date'], :Expected_Return_Date => article['Expected_Return_Date'],:Return_Date => article['Return_Date']);
  end 
end

When(/^I follow the "([^"]*)" link$/) do |arg1|
    click_link(arg1)
end

Then(/^I expect to be on the Checked Out page$/) do
  expect(current_path).to eql(checkedout_path)
end

Then(/^I expect to see suit "([^"]*)" on the list of checked out suits$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I expect not to see suit "([^"]*)" checked out$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^expect to be on the Late page$/) do
  expect(current_path).to eql(late_path)
end

Then(/^expect to see suit "([^"]*)" on the list of late suits$/) do |arg1|
  expect(page).to have_content(arg1)
end

Then(/^expect not to see suits "([^"]*)", "([^"]*)" , and "([^"]*)" checked out$/) do |arg1, arg2, arg3|
  expect(page).to have_no_content(arg1)
  expect(page).to have_no_content(arg2)
  expect(page).to have_no_content(arg3)
end

