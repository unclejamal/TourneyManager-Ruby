Feature: Spectators can view tourneys
  
  Scenario: Spectator views empty tournaments list
    Given System has no tourneys
    When Spectator views all tourneys
    Then They see no tourneys
