Feature: Add a new character entry
  
  As a user
  So that I can easily customize my character 
  I want to be able to add a new character entry 
  
  Scenario: As a user I want to be able to navigate from the homepage to the new character form
    Given I am on the home page
    When I click on the "Characters" link
    Then I should be on the "Characters List" page
    When I click on the "Create Character" link
    Then I should be on the "DeviantCharacter" page
    And I should see the "Name" field
    And I should see the "Sex" field
    And I should see the "Age" field
    And I should see the "Race" field
    
    And I should see the "Birthday" field

    And I should see the "Birth" field
    And I should see the "Country" field
    And I should see the "Personality" field
    And I should see the "Backstory" field