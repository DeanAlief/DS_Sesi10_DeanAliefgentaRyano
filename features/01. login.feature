@digital-skola @login
Feature: Swag Labs - Login
  
  Background: User on the login page
    Given Dean is on the login page

  @positive
  Scenario: As a standard_user, I want to log in successfully
    When Dean login with "standard_user" credential
    Then Dean should see home page

  @negative
  Scenario: As a locked_out_user, I should get error message
    When Dean login with "locked_out_user" credential
    Then Dean should see error "Epic sadface: Sorry, this user has been locked out."
