Given(/^I have an existing Philosopher$/) do
  User.create!(name: "User", email: "user@example.com", password: "password")
  Philosopher.create!(name: "Socrates", birthdate: "11/11/11", concentration: "Philosophy", origin: "Athens", wikipedia: "wwww.socrates.com", address: "Athens, Greece")
end

When(/^I visit "([^"]*)"$/) do |arg1|
  visit(path)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

When(/^I click "([^"]*)"$/) do |link|
  click_link(link)
  # print page.html
end

When(/^I find id "([^"]*)"$/) do |id|
  # print page.html
  find_by_id(id)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

Then(/^I should see id "([^"]*)"$/) do |id|
  assert page.has_link?(id)
end

Then(/^I should see "([^"]*)"$/) do |content|
 assert page.has_content?(content)
end

Then(/^I should not see "([^"]*)"$/) do |content|
  refute page.has_content?(content)
end

Then(/^I find "([^"]*)"$/) do |el|
  page.find(el)
end

Given(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see a pin on the map$/) do
  expect(page).to have_selector('#markers img', count: 1)
end
