Feature: Create a project as a Coreteam user 
  In order to verify that a Coreteam user can create a project
  As a Coreteam
  I should be able to create a project

  Background: Login with proper credentials
    Given I am at the StartApp Login Page
    When I insert a valid coreteam username coreteam@gmail.com
    And I insert a valid coreteam password 123456
    And I press the button Iniciar Sesión
    Then I can see the Home field
    And I can see the Proyectos field
    And I can see the Eventos field
    And I can see the Cuenta field

  @1
  Scenario: Create a new project 
    Given I click in the projects tab 
    And I click in the Crear Proyecto button
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
    When I click in the submit Crear Proyecto button inside the form 
    And I enter to the category of the created project Trabajo Social
    And I click the Ver detalles button of the card with the created projects name Prueba
    Then I should see the projects name Prueba 
    And I should see the start date that I selected 12/12/2022
    And I should see the end date that I selected 21/12/2022
    And I should see the description I gave "Es un evento para recaudar fondos"
    And I should see the objective I gave "Se requiere recaudar 1000$ para una obra benéfica"
    And I should see the leader I chose "Inge"
    And I should see the category I selected "Trabajo Social"
    And I should see the state I selected "en progreso"

 #This scenario is different of the previous one because of the role and it's created to see that other roles can see the recently created projects 
  Scenario: See the projects details 
    Given I am at the StartApp Home Page
    And I click the projects link
    When I click in the Trabajo Social category
    And I press the Ver detalles button of the project Prueba 
    Then I see the name Prueba of the project 
    And I should see the start date 12/12/2022
    And I should see the end date 21/12/2022
    And I should see the description "Es un evento para recaudar fondos"
    And I should see the objective "Se requiere recaudar 1000$ para una obra benéfica"
    And I should see the leader "Inge"
    And I should see the category "Trabajo Social"

  Scenario: See the projects details 
    Given I am at the StartApp Home Page
    And I click the projects link
    When I click in the Trabajo Social category
    And I press the Ver detalles button of the project Prueba 
    Then I see the name Prueba of the project 
    And I should see the start date 12/12/2022
    And I should see the end date 21/12/2022
    And I should see the description "Es un evento para recaudar fondos"
    And I should see the objective "Se requiere recaudar 1000$ para una obra benéfica"
    And I should see the leader "Inge"
    And I should see the category "Trabajo Social"
