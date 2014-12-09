Feature: View puppies
  I want to be able to view a list of puppies with summary information and then proceed to view details on a specific puppy

Background:
  Given I am viewing puppies

  Scenario: See a list of puppies
    Then I should see a list of puppies

  Scenario: See individual puppy summary information
    Then I should a Female Golden Retriever named Brook
