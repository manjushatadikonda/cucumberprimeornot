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
@tag
Feature: Check prime or not
  @tag1
  Scenario: number check
    Scenario Outline: verify prime number or not
    Given user inputs an integer <input1>
    When user calls numbercheck method
    Then user should get output as <output>
    
     Examples:
    |input1| output|
    |6     |   "False"|
    |19    |    "True"|
    |3  |   "True"|

  
