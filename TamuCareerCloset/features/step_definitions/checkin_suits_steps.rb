When(/^I click on Check In$/) do
  expect(page).to have_selector(:link_or_button, 'Check In')
end