Feature: Player makes a turn

  Scenario: First turn
    Given Game started
    When Player makes first turn
    Then Turn is legal
    And The board isn't clear anymore

  Scenario Outline: Other turn
    Given The board has <state>
    When Player makes <turn>
    Then Turn is <legal>

    Scenarios: Turn is legal
      | state     | turn | legal |
      | ......... | 1 | true |
      | ...X..... | 1 | true |

    Scenarios: Turn isn't legal
      | state | turn | legal |
      | X........ | 0 | false |
      | XO....... | -1 | false |

  Scenario Outline: Last turn
    Given The board has <state>
    When Player makes <turn>
    And The current turn is <char>
    Then Game is over

    Scenarios: Game over
      | state | turn | char |
      | XX.O.O...| 2 | X |
      | XX.O.OX..| 4 | O |
      | XXOOXOX..| 8 | X |
      | XX.XOO.O.| 6 | X |

