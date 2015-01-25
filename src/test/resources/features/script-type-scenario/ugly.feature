Feature: As the customer, I want to be able to send a request for a price to a pricer so I can get a price

  Scenario: Customer sends a price request and the pricer receive it
    Given a request for a price defined by "generic_price_request.json"
    When the customer sends the request defined by:
      | REQUEST_ID                           | CLIENT_ID | PRODUCT_INFO        | TIMESTAMP  | STATUS_CODE | STATUS_TEXT | TEXT   |
      | 110e8400-e29b-11d4-a716-446655440000 | 42        | X_EUR_BMW_537389873 | 1422207807 | <null>      | <null>      | <null> |
    Then the pricer should receive a request defined by:
      | REQUEST_ID                           | CLIENT_ID | PRODUCT_INFO        | TIMESTAMP  | STATUS_CODE | STATUS_TEXT | TEXT   |
      | 110e8400-e29b-11d4-a716-446655440000 | 42        | X_EUR_BMW_537389873 | 1422207807 | <null>      | <null>      | <null> |


  Scenario: Pricer sends a acknowledgment of the price request to the customer
    Given the pricer received a price request defined by:
      | REQUEST_ID                           | CLIENT_ID | PRODUCT_INFO        | TIMESTAMP  | STATUS_CODE | STATUS_TEXT | TEXT   |
      | 110e8400-e29b-11d4-a716-446655440000 | 42        | X_EUR_BMW_537389873 | 1422207807 | <null>      | <null>      | <null> |
    When the pricer sends an acknowledgement defined by:
      | MESSAGE_ID                           | REQUEST_ID                           | TIMESTAMP  | STATUS_CODE | STATUS_TEXT | TEXT   | PRICE  |
      | 1124d9e8-6266-4bcf-8035-37a02ba75c69 | 110e8400-e29b-11d4-a716-446655440000 | 1422219048 | 1           | ACCEPTED    | <null> | <null> |
    Then the customer should receive a acknowledgement defined by:
      | MESSAGE_ID                           | REQUEST_ID                           | TIMESTAMP  | STATUS_CODE | STATUS_TEXT | TEXT   | PRICE  |
      | 1124d9e8-6266-4bcf-8035-37a02ba75c69 | 110e8400-e29b-11d4-a716-446655440000 | 1422219048 | 1           | ACCEPTED    | <null> | <null> |

  Scenario: Pricer sends a price to the customer
    Given the pricer sent an acknowledgement defined by:
      | MESSAGE_ID                           | REQUEST_ID                           | TIMESTAMP  | STATUS_CODE | STATUS_TEXT | TEXT   | PRICE  |
      | 1124d9e8-6266-4bcf-8035-37a02ba75c69 | 110e8400-e29b-11d4-a716-446655440000 | 1422219048 | 1           | ACCEPTED    | <null> | <null> |
    When the pricer sent a price defined by:
      | MESSAGE_ID                           | REQUEST_ID                           | TIMESTAMP  | STATUS_CODE | STATUS_TEXT | TEXT   | PRICE |
      | ac56a704-260b-45f5-85ac-e1b451bb79bc | 110e8400-e29b-11d4-a716-446655440000 | 1422219048 | 1           | UPDATED     | <null> | 555   |
    Then the customer should receive the price defined by:
      | MESSAGE_ID                           | REQUEST_ID                           | TIMESTAMP  | STATUS_CODE | STATUS_TEXT | TEXT   | PRICE |
      | ac56a704-260b-45f5-85ac-e1b451bb79bc | 110e8400-e29b-11d4-a716-446655440000 | 1422219048 | 1           | UPDATED     | <null> | 555   |