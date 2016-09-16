Feature: As a User, In order to use the app, I would like to be able to login


  Scenario: Existing User Logs In
    Given I have an existing user account
    When I visit "/sign_in"
    And I fill in "Email" with "user@example.com"
    And I fill in "Password" with "password"
    And I press "Submit"
    Then I should see "Create Note"

  Scenario: User Without an Account Signs Up
