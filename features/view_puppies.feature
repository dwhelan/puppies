Feature: View puppies
  I want to be able to view a list of puppies with summary information and then proceed to view details on a specific puppy

Background:
  Given I am viewing puppies

  Scenario: See a list of puppies
    Then I should see a list of puppies

  Scenario: See puppy summary information
    Then I should see a summary for a Female Golden Retriever named Brook

  Scenario: view details
    When I view puppy details
    And  I should see a Female Golden Retriever named Brook
