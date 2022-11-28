Feature: Login with a Google Account
  In order to verify that can do a Login to the StartApp website
  As a member of the StartApp organization 
  I should be able to login using my Google Account
 
  Scenario: Login with a Google Account
    Given I am at the StartApp Login Page
    When I press the button Iniciar con Google
    And I select the account registered with role CoreTeam
    Then I can see the Home field
    And I can see the Proyectos field
    And I can see the Eventos field
    And I can see the Cuenta field
    And I can see the Usuarios field
    And I can see the Icon field