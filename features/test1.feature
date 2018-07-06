Feature: test1.feature
Background:
Given User prints comment "User navigates to the Calculator page"
When User navigates to the Calculator page with url "http://juliemr.github.io/protractor-demo/"
Then Page title is equal to "Super Calculator"

Scenario: 1: check 6597+1
When User enters 6597 in field "[ng-model='first']"
When User enters 1 in field "[ng-model='second']"
When User clicks Go Button "#gobutton"
Then Result "h2" is equal to "6598"

  Scenario: 2: check dividing by 0
    When User enters 896 in field "[ng-model='first']"
    When User enters 0 in field "[ng-model='second']"
    When User selects "[value='DIVISION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "Infinity"

  Scenario Outline: check multiplication of two numbers
    When User enters <1> in field "[ng-model='first']"
    When User enters <2> in field "[ng-model='second']"
    When User selects "[value='MULTIPLICATION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "<result>"
    Examples:
    |1|2|result|
    |55 |10 |550     |
    |15 |2  |30      |
    |33 |20 |660     |

  Scenario: 4: check multiplication by 0
    When User enters 0 in field "[ng-model='first']"
    When User enters 574 in field "[ng-model='second']"
    When User selects "[value='MULTIPLICATION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "0"
  Scenario: 5: check 3300-2700
    When User enters 3300 in field "[ng-model='first']"
    When User enters 2700 in field "[ng-model='second']"
    When User selects "[value='SUBTRACTION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "600"