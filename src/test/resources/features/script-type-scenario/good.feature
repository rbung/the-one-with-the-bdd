Feature: As the customer, I want to be able to send a request for a price to a pricer so I can get a price

  Scenario: Customer sends a price request and the pricer receive it
    Given a generic price request
    When the customer sends the price request to the pricer
    Then the pricer should receive the price request

  Scenario: Pricer sends a acknowledgment of the price request to the customer
    Given a requested transaction
    When the pricer sends an acknowledgement to the customer
    Then the customer should receive the acknowledgement

  Scenario: Pricer sends a price to the customer
    Given an accepted transaction
    When the pricer sends a price to the customer
    Then the customer should receive the price