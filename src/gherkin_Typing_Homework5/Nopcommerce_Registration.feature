Feature: Nopcommerce Registration

  As a User
  I want to check the Register functionality of the Nopcommerce

  Background: I am Nopcommerce Registration Page
    Given     I open Google Chrome Browser
    When      I open the URL https://demo.nopcommerce.com/register
    Then      I am on the NopCommerce Registration Page

  Scenario Outline:  I should not be able to Register with invalid data mandatory field (*) of Registration Page
    When       I Enter First Name "<First Name>"
    And        I Enter Last Name "<Last Name>"
    And        I Enter Email address "<Email>"
    And        I Enter Password "<Password>"
    And        I Enter Confirm Password "<Confirm Password>"
    And        Click on Register Button
    And        I can see an Error Message "<Error message>"
    And        I am not able to Register

    Examples:
      | First Name | Last Name | Email            | Password | Confirm Password | Error message                              |
      |            | Bakshi    | bakshi@gmail.com | 456897   | 456897           | Please enter First Name                    |
      | Rohan      |           | bakshi@gmail.com | 456897   | 456897           | Please enter Last Name                     |
      | Rohan      | Bakshi    |                  | 456897   | 456897           | Please enter vail email                    |
      | Rohan      | Bakshi    | bakshi@gmail.com |          | 456897           | Password is required                       |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456897   |                  | Confirm password is required               |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456897   | 45689            | Password and Confirm password do not match |
      | Rohan      | Bakshi    | bakshi@gmail     | 45689    |                  | Minimum 6 character password is required   |
      |            |           |                  |          |                  | Mandatory (*) field is required            |

  Scenario:  I should be able to select any one readio button from Gender Label of Personal Details section
    Given    I am on Gender label of  Your personal detail section
    When     I Select "Male"  radio button
    And      I Select "Female" radio button
    Then     I am able to select any one of the redio button

  Scenario Outline: I should be able to select Day, Month and Year from drop down list of date if Birth field
    Given       I am on the Date of Birth field of you Personal Detail section
    When        I select a "<Day>"
    And         I select a "<Month>"
    And         I select a "<Year>"
    Then        I am able to select Day, Month and year from frop down list

    Examples: | Day | Month    | Year |
              | 11  | November | 1989 |

  Scenario: I should be able to check and uncheck the Newsletter on option section
    Given   I am on Newsletter on label options section
    When    I click on Newsletter checkbox
    And     I again click on News letter checkbox
    Then    I was able to check and uncheck the box next to Newsletter lable


  Scenario: I should be able to register with vaild mandatory (*) field data on registration page
    When    I enter First Name "Rohan"
    And     I enter Last name "Bakshi"
    And     I enter Email "bakshi@:gmail.com"
    And     I enter password "456897"
    And     I enter confirm passowrd "456897"
    And     I click on Register button
    And     I was able to register successfully

