@Regression
Feature: test-feature

  Background:
    Given User prints comment "User navigates to the Calculator page"
    When User navigates to the Calculator page with url "http://juliemr.github.io/protractor-demo/"
    Then Page title is equal to "Super Calculator"

  Scenario: 1: Verify calculator
    When User enters 3 in field "[ng-model='first']"
    When User enters 4 in field "[ng-model='second']"
    When User selects "[value='DIVISION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "0.75"
    Then Go button "button#gobutton.btn" is displayed
    Then Go button "button#gobutton.btn" with text "Go!" is displayed




