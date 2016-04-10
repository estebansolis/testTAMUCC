When(/^I click on Check Out$/) do
  expect(page).to have_selector(:link_or_button, 'Check Out')
end