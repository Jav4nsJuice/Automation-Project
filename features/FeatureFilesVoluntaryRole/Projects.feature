Feature: See the categories list of projects
  In order to verify that the list of categories is displayed
  As a Volunteer
  I should be able to see the list of categories of projects displayed
  
  Scenario: See the categories list of projects as a Volunteer
    Given I am at the StartApp Home Page
    When I click in the projects tab 
    Then I see the categories list of projects