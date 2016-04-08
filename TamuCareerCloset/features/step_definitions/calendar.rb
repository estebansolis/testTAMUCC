When(/^I click on Appointments$/) do
  expect(page).to have_selector(:link_or_button, 'Appointments')
end

Then(/^I see the calendar$/) do
  #expect(page).to have_content(:javascripts, 'calendar-container')
  expect(page).to have_content(page.find('calendar-container'))
end