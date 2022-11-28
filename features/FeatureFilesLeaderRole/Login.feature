Feature: Login with Leader credentials through Happy Path
  In order to verify that can do a Login on the website 
  As a leader 
  I should be able to login using my leader credentials
 
  Scenario: Login with proper credentials
    Given I am at the StartApp Login Page
    When I insert a valid leader username lider@gmail.com
    And I insert a valid leader password 123456
    And I press the button Iniciar Sesión
    Then I can see the Home field
    And I can see the Proyectos field
    And I can see the Eventos field
    And I can see the Cuenta field
    And I can see the Usuarios field
    And I can see the Icon field 

  Scenario: Login with incorrect credentials
    Given I am at the StartApp Login Page
    When I insert a valid leader username lider@gmail.com
    And I insert a incorrect leader password 1234567
    And I press the button Iniciar Sesión
    Then an alert comes out Correo o contraseña inválidos.

  Scenario: Login with invalid mail
    Given I am at the StartApp Login Page
    When I insert a invalid leader username lider.com
    And I insert a valid leader password 123456
    Then an alert comes out Correo no valido
    And the Iniciar Sesión button doesn't show up