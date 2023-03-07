Feature: Bookcategory

  Background: I should be able to see the Homepage
    Given   I enter URL"https://demo.nopcommerce.com/" in browser
    And     I am on the Home page

  Scenario Outline: I should be able to see the top menu tabs on the Homepage with categorie
    When   I am on the Homepage
    Then   I should be able to see top menu tabs with "<categories>"

    Examples:
      | Categories       |
      | Computer         |
      | Electronic       |
      | Apparel          |
      | Digital Download |
      | Books            |
      | Jewellery        |
      | Gift Card        |

  Scenario Outline:   I should be able to see book page filters
    When     I select book category from top menu tabs on the home page
    Then     I should be nevigated to book page
    And      I should be able to see "<filters>"

    Examples:
      | Filters  |
      | Sort by  |
      | Display  |
      | the Grid |
      | List tab |

  Scenario Outline:   I should be to see list of items of each filter
    Given     I am on the Book page
    And       I click on "<filter>"
    Then      I should be able to see "<list>" in dropdown menu

    Examples:
      | filter  | list                                                                           |
      | sort by | Name: A to Z, name: Z to A, Price: Low to High, Price: High to Low, Created on |
      | Display | 3, 6, 9                                                                        |

  Scenario Outline:   I should be able to choose any filter option with specific result
    Given       I am on the Book page
    When        I click on "<filter>"
    And         I click on "<option>"
    Then        I should be able to choose any filtre option from the list
    And         I should be able to see "<result>"

    Examples:
      | filter  | option            | result                                                            |
      | sort by | Name: A to Z      | sorted product with the product name in alphabetical order A to Z |
      | sort by | Name: Z to A      | sorted product with the product name in alphabetical order Z to A |
      | sort by | price low to high | sorted product with price in descending order                     |
      | sort by | price high to low | sorted product with price in ascending order                      |
      | sort by | created on        | recently added product should be shown first                      |
      | display | 3                 | 3 products in a page                                              |
      | display | 6                 | 6 products in a page                                              |
      | display | 9                 | 9 products in a page                                              |

  Scenario Outline:   I should be able to see product display format according display format type as per given picture in srs document
    Given       I am on the Book page
    When        I click on "<display format icon>"
    Then        I should be able to see product display format according display format type as per given picture in SRS Document

    Examples:
      | display format icon |
      | grid                |
      | List                |



