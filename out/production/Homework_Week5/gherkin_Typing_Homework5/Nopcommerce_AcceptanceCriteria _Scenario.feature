Feature: Demo NopCommerce's Topmenu Acceptance Criteria
  As  a user, I would like to check Acceptance Criteria of NopCommerce topmenu

  Background: User is on the given URL
    When    User type URL https://demo.nopcommerce.com
    And     User click on entre button
    Then    User is on the guiven URL

  Scenario:  Verify that user can navigate to Book category
    When     User is on the given URL
    And      Click on the Books tab on top menu
    Then     user is Navigated to Books Category Page


  Scenario:  Verify that user can see the book category page with filters and list of products
    When     User is on the given URL
    And      Click on the Book tab on the top menu
    And      Check filters and list tab
    Then     Books category is displayed with filters and list tabs

  Scenario:  Verify that user can see 'Sort by' filter on the book category page
    Given    User is on the Book category page
    When     User is on the Book category page
    And      Check 'sort by' filter present
    Then     'Sort by' filter is availabe on the Book category page

  Scenario: Verify that user can see Display filter on book category page
    Given   User is on the Book category page
    When    User is on the Book category page
    And     Check 'Display' filter is present
    Then    'Display' filter is avaliable on Book category

  Scenario: Verify that user can see Grid tab on Book category page
    Given   User is on the Book category page
    When    User is on the Book category page
    And     Check 'Grid' tab is present
    Then    'Grid' tab is avaliable on Book category

  Scenario: Verify user can see 'List' tab on the Book category
    Given   User is on the Book category page
    When    User is on the Book category page
    And     Check 'List' tab is present
    Then    'List' tab is avaliable on Book category

  Scenario: Verify use can see 'Name: A to Z' selection is present in 'sort by' filter
    Given User is on the Book category page
    When  User is on the Book category page
    And   Click on 'Sort by' filter
    And   Check that 'Name A to Z' is selection is present
    Then  'Name A to Z' selection is present in 'Sort by' filter

  Scenario: Verify use can see 'Name A to Z' is first option in 'Sort by' filter
    Given   User is on the Book category page
    When    User is on the Book category page
    And     Click on 'Sort by' filter
    And     Check that 'Name A to Z- is first in order
    Then    'Name A to Z' is first option in order

  Scenario: Verify that user can see 'Name A to Z' filter is functioning as expected( Note: Product are filter in alphabetical order)
    Given   User is on Book category page
    When    User is on Book category page
    And     Click on 'Sort by' filter
    Then    All the products are displayed in alphabetical order
