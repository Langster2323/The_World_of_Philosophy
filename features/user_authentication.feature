Feature: As a User, In order to use the app, I would like to be able to login

Background: A User logs in
  Given I have an existing Philosopher
  When I visit "/sign_in"
  And I fill in "Email" with "user@example.com"
  And I fill in "Password" with "password"
  And I press "Submit"

  Scenario: First thing user sees after logging in
    Then I should see "Listing Philosophers"

  Scenario: User clicks something
    And I click "link"
