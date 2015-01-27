Feature: Record of a transaction in legals systems

Scenario: when a transaction is made by a customer, it needs to be recorded
into the legal system

Given a customer wants to buy 45 stock options
And the trader ask 35€ per stock options
When the customer buy 45 stock options for 35€ per unit
Then the transaction is recorder into the legal system
