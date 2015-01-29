Feature: Authentication

  Scenario: As the system, I want to accept a connection from the customer only if he has the correct credentials
    Given the system is configured to accept login "login" and password "password"
    When the customer connects to the system with login "login" and password "password"
    Then the system should accept the connection
