Feature: System restart behavior

  Scenario: As the system, I want all my transactions to be closed when I restart
    Given a system with 8 opened transactions
    When the system restarts
    Then no transactions should be opened

