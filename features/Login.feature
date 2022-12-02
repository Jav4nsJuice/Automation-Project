Feature: Login into the StartApp website 
  In order to verify that I can access in the StartApp Americas Together website 
  As a  member of the organization Start Americas Together
  I should be able to login using proper credentials
 
  @1
  Scenario Outline: Login with proper credentials
    Given I am at the StartApp Login Page
    When I insert a valid username "<email>"
    And I insert a valid password
    And I press the button Iniciar Sesión
    Then I can see the Home link
    And I can see the Proyectos link
    And I can see the Eventos link
    And I can see the Cuenta link
    And I can see the Icon link

  @2
  Scenario Outline: Login with incorrect credentials
    Given I am at the StartApp Login Page
    When I insert a valid username "<email>"
    And I insert a incorrect password 1234567
    And I press the button Iniciar Sesión
    Then an alert comes out Correo o contraseña inválidos.

  @3
  Scenario: Login with invalid mail
    Given I am at the StartApp Login Page
    When I insert a invalid username voluntariogmail.com
    And I insert a valid volunteer password
    Then an alert comes out Correo no valido
    And the Iniciar Sesión button is not enabled

  @4
  Scenario Outline: Login with a Google Account
    Given I am at the StartApp Login Page
    When I press the button Iniciar con Google
    And I select an account already registered as a "<registered_as>"
    Then I can see the Home link
    And I can see the Proyectos link
    And I can see the Eventos link
    And I can see the Cuenta link
    And I can see the Icon link

   Examples:
   | email  | registered_as |
   | voluntario@gmail.com  | voluntario |
   | lider@gmail.com  | lider |
   | coreteam@gmail.com  | coreteam |

