Feature: Searching for products

  Background:
    Given there is a product "Smoki"
    And there is a product "Plazma"
    And I am on the products page

  Scenario: Searching for a product by name
    When I search for "Smoki"
    Then I should see "Smoki"
    And I should not see "Plazma"
