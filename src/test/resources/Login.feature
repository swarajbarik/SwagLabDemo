Feature: This feature is to test the login functionality of swag lab.

  Scenario: Init WebBrowser
    Given User opens "chrome" Browser
    And User maximises browser
    Then User hits url

  Scenario: Validate login details for Blank Username and Password
    Given User reloads the page
    When User enters username as ""
    And User enters password as ""
    Then User hits login button
    Then User gets "Username is required"

  Scenario: Validate login details for Invalid user name & password
    Given User reloads the page
    When User enters username as "tester"
    And User enters password as "test123"
    Then User hits login button
    Then User gets "Username and password do not match any user in this service"

  Scenario: Validate login details for Invalid user name &  blank password
    Given User reloads the page
    When User enters username as "tester"
    And User enters password as ""
    Then User hits login button
    Then User gets "Password is required"

  Scenario: Validate login details for Blank user name &  invalid password
    Given User reloads the page
    When User enters username as ""
    And User enters password as "test123"
    Then User hits login button
    Then User gets "Username is required"

  Scenario: Validate login details for Valid user name with Uppercase Letter & valid password
    Given User reloads the page
    When User enters username as "Standard_user"
    And User enters password as "secret_sauce"
    Then User hits login button
    Then User gets "Username and password do not match any user in this service"

  Scenario: Validate login details for Valid user name & valid password with Uppercase Letter
    Given User reloads the page
    When User enters username as "standard_user"
    And User enters password as "Secret_saUcE"
    Then User hits login button
    Then User gets "Username and password do not match any user in this service"

  Scenario: Validate login details for Space before/after user name & password
    Given User reloads the page
    When User enters username as " standard_user "
    And User enters password as "secret_sauce"
    Then User hits login button
    Then User gets "Username and password do not match any user in this service"

  Scenario: Validate login details for locked_out_user user name & password
    Given User reloads the page
    When User enters username as "locked_out_user"
    And User enters password as "secret_sauce"
    Then User hits login button
    Then User gets "Sorry, this user has been locked out."

  Scenario: Validate login details for performance_glitch_user user name & password
    Given User reloads the page
    When User enters username as "performance_glitch_user"
    And User enters password as "secret_sauce"
    Then User hits login button
    And User is succesfully logged in

  Scenario: Validate login details for problem_user user name & password
    Given User hits url
    When User enters username as "problem_user"
    And User enters password as "secret_sauce"
    Then User hits login button
    And User gets "Username and password do not match any user in this service"

  Scenario: Validate login details for standard_user user name & password
    Given User hits url
    When User enters username as "standard_user"
    And User enters password as "secret_sauce"
    Then User hits login button
    And User is succesfully logged in
    
    Scenario: Quits Browser
    Then User quits browser 
