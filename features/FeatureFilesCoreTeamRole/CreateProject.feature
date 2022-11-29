Feature: Create a project as a Coreteam user 
  In order to verify that a Coreteam user can create a project
  As a Coreteam
  I should be able to create a project

  Background: Login with proper credentials
    Given I am at the StartApp Login Page
    When I insert a valid volunteer username voluntario@gmail.com
    And I insert a valid volunteer password 123456
    And I press the button Iniciar Sesión
    Then I can see the Home field
    And I can see the Proyectos field
    And I can see the Eventos field
    And I can see the Cuenta field
    And I can see the Icon field

  Scenario: See the projects creation form as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    When I click in the Crear Proyecto button 
    Then I see the projects creation form

Scenario: Put an start date in the projects creation form as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    And I have clicked the Crear Proyecto button
    When I click in the calendar button in the Fecha de Inicio Field
    Then I see the calendar displayed 
    And I click in a date 
    And I see the selected date in the field 

Scenario: Put an end date in the projects creation form as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    And I have clicked the Crear Proyecto button
    When I click in the calendar button in the Fecha de Fin Field
    Then I see the calendar displayed 
    And I click in a date 
    And I see the selected date in the field 

Scenario: Put a Name to the project in the projects creation form as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    And I have clicked the Crear Proyecto button
    When I enter the project's name 
    Then I see the name I put in the field

Scenario: Put a Description to the project in the projects creation form as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    And I have clicked the Crear Proyecto button
    When I enter the project's description 
    Then I see the description I put in the field

Scenario: Put an Objective to the project in the projects creation form as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    And I have clicked the Crear Proyecto button
    When I enter the project's objective 
    Then I see the objective I put in the field

Scenario: Put a Leader to the project in the projects creation form as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    And I have clicked the Crear Proyecto button
    When I click the project's leaders button 
    And I select one from the list  
    Then I see the Leader I choose in the field

Scenario: Put a Category to the project in the projects creation form as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    And I have clicked the Crear Proyecto button
    When I click the project's category button 
    And I select one from the list  
    Then I see the category I choose in the field

Scenario: Put a State to the project in the projects creation form as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    And I have clicked the Crear Proyecto button
    When I click the project's state button 
    And I select one from the list  
    Then I see the state I choose in the field

Scenario: Put Additional Information to the project in the projects creation form as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    And I have clicked the Crear Proyecto button
    When I enter the project's Additional Information
    Then I see the Additional Information I put in the field

Scenario: Put an Image Link to the project in the projects creation form as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    And I have clicked the Crear Proyecto button
    When I enter the project's Image by link 
    Then I see the Image Link I put in the field

Scenario: Create a project with only the required fields as a Coreteam
    Given I have entered correct credentials of Coreteam
    And I have entered to the projects tab
    And I have clicked the Crear Proyecto button
    When I enter the project's required fields
    Then I can create a project