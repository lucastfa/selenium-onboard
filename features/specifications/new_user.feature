@newAccount
Feature: Create Account Journey

  Scenario: Create a new account

    Given that the user is in the home page
    And want to create a new account
    When the user input the correct data
    Then the account should be created with success
