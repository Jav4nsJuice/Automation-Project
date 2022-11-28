Feature: Login with Core Team credentials through Happy Path
  In order to verify that can do a Login on the website 
  As a core team developer 
  I should be able to login using my core team credentials
 
  Scenario: Login with proper credentials
    Given I am at the StartApp Login Page
    When I insert a valid coreteam username coreteam@gmail.com
    And I insert a valid coreteam password 123456
    And I press the button Iniciar Sesión
    Then I can see the Home field
    And I can see the Proyectos field
    And I can see the Eventos field
    And I can see the Cuenta field
    And I can see the Usuarios field
    And I can see the Icon field

  Scenario: Login with incorrect credentials
    Given I am at the StartApp Login Page
    When I insert a valid coreteam username coreteam@gmail.com
    And I insert a incorrect coreteam password 1234567
    And I press the button Iniciar Sesión
    Then an alert comes out Correo o contraseña inválidos.

  Scenario: Login with invalid mail
    Given I am at the StartApp Login Page
    When I insert a invalid coreteam username coreteamgmail.com
    And I insert a valid coreteam password 123456
    Then an alert comes out Correo no valido
    And the Iniciar Sesión button doesn't show up