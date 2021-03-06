Feature: As a User, I should be able to see the homepage after signing in
  Scenario: Existing user logs in and visits homepage
    Given I have an existing user account
    And I am currently logged in
    When I visit "/"
    And I click "Sign In"
    And I fill in "Email" with "user@example.com"
    And I fill in "Password" with "password"
    And I press "Submit"
