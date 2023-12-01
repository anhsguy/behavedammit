Feature: Incrementor Functionality

  Scenario: Increment by a fixed stride
    Given a stride of 5 is set
    When the incrementor function is applied to 10
    Then the result should be 15

  Scenario: Decrement by a fixed stride
    Given a stride of -2 is set
    When the incrementor function is applied to 20
    Then the result should be 18

  Scenario: Do nothing to the number
    Given a stride of 0 is set
    When the incrementor function is applied to 10
    Then the result should be 10

