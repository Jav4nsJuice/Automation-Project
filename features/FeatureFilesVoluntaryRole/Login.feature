Feature: Login with Voluntary credentials through Happy Path
  In order to verify that can do a Login on the website 
  As a voluntary 
  I should be able to login using my voluntary credentials
 
  @1
  Scenario: Login with proper credentials
    Given I am at the StartApp Login Page
    When I insert a valid volunteer username voluntario@gmail.com
    And I insert a valid volunteer password 123456
    And I press the button Iniciar Sesión
    Then I can see the Home field
    And I can see the Proyectos field
    And I can see the Eventos field
    And I can see the Cuenta field
    And I can see the Icon field

  @2
  Scenario: Login with incorrect credentials
    Given I am at the StartApp Login Page
    When I insert a valid volunteer username voluntario@gmail.com
    And I insert a incorrect volunteer password 1234567
    And I press the button Iniciar Sesión
    Then an alert comes out Correo o contraseña inválidos.

  @3
  Scenario: Login with invalid mail
    Given I am at the StartApp Login Page
    When I insert a invalid volunteer username voluntariogmail.com
    And I insert a valid volunteer password 123456
    Then an alert comes out Correo no valido
    And the Iniciar Sesión button doesn't show up