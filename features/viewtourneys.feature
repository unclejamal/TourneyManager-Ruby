Feature: Spectators can view tourneys
  
  Scenario: Spectator views empty tournaments list
    Given there are no tourneys
    When spectator views them
    Then they see no tourneys
