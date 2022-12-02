Feature: View Details of Events which are on progress
  As a volunteer
  I want to check the details of a event
  So that I get to know those details and decide wheter to participate or not on it

  Background: Login with proper credentials and go to Projects link
    Given I am at the StartApp Login Page
    When I insert a valid username "<email>"
    And I insert a valid password
    And I press the button Iniciar Sesión
    And I press the button Eventos

  Scenario: Watch details from a certain project
    When I press the category Trabajo Social
    And I press the Ver detalles button of the project named Prueba 
    Then I see the project's name Prueba 
    And I should see the start date 12/12/2022
    And I should see the end date 21/12/2022
    And I should see the description "Es un evento para recSaudar fondos"
    And I should see the objective "Se requiere recaudar 1000$ para una obra benéfica"
    And I should see the leader "Inge"
    And I should see the category "Trabajo Social"

Examples:
| email | 
| voluntario@gmail.com |
| lider@gmail.com |
| coreteam@gmail.com |