#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
Feature: Register
  I want to register so I can login in Book Store Application

  @tc001, @tc002, @tc003 
  Scenario Outline: User input registration form without verify reCaptcha
    Given user in register page
    When User fill <firstname> field
    And User fill <lastname> field
    And User fill <username> field
    And User fill <password> field
    And User click register button
    Then user see reCaptcha error message

    Examples: 
      | firstname | lastname | username | password |
      | poi       |      uyt | poiuyt   |  9SSWKG* |
      | poi       |      uyt | poiuyt   |          |
      | poi       |          |          |  9SSWKG* |
      |           |      uyt | poiuyt   |  9SSWKG* |
      | poi       |      uyt | poiuytr  |  9SSWKG* |
      | name2     |    name2 | name2    |  asdasdd |
