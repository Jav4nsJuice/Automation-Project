Feature: Create a project as a Coreteam user 
  As a coreteam user
  I want to be able to create a project
  so that the other users could join and see the details of that project

  Background: Login with proper credentials
    Given I am at the StartApp Login Page
    When I insert a valid username coreteam@gmail.com
    And I insert a valid password
    And I press the button Iniciar Sesión

  @1
  Scenario: Create a new project 
    When I press the button Proyectos 
    And I press the button Crear Proyecto 
    And I fill the start date with 12 12 2022
    And I select an end date with 21 12 2022
    And I fill the projects name with Prueba
    And I fill the projects description with Es un evento para recaudar fondos
    And I fill the projects objective with Se requiere recaudar 1000$ para una obra benéfica
    And I choose the leader Inge
    And I choose the category Trabajo Social
    And I choose the state en progreso
    And I fill Additional Information Se donará el día 15 12 2022
    And I fill the image by link https://st2.depositphotos.com/1173077/6982/v/950/depositphotos_69823657-stock-illustration-helping-each-other.jpg
    And I click in the Crear Proyecto button inside the form 
    And I enter to the category of the created project Trabajo Social
    And I click the Ver detalles button of the card with the created projects name Prueba
    Then I should see the created project's name Prueba 
    And I should see the start date that I selected 12/12/2022
    And I should see the end date that I selected 21/12/2022
    And I should see the description I gave "Es un evento para recaudar fondos"
    And I should see the objective I gave "Se requiere recaudar 1000$ para una obra benéfica"
    And I should see the leader I chose "Inge"
    And I should see the category I selected "Trabajo Social"
    And I should see the state I selected "en progreso"

