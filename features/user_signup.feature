Feature: As a User, In order to sign_up, I need to have an account

  Scenario: Non-User presses sign in
    Given I have an existing Philosopher
    When I visit "/sign_in"
    And I fill in "Email" with "jimmy@example.com"
    And I fill in "Password" with "password"
    And I press "Submit"
    Then I should see "Sign In"

  Scenario: Non-User creates an account
    Given I have an existing Philosopher
    When I visit "/sign_in"
    And I click "Sign Up"
    And I fill in "Name" with "Jimmy"
    And I fill in "Email" with "jimmy@example.com"
    And I fill in "Password" with "password"
    And I press "Submit"
    Then I should see "Listing Philosophers"
