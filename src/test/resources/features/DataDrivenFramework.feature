Feature: Fill a simple form with excel data

Background:
When I open automationpractice website

@Webdriver
  Scenario: Data driven with excel
    
    And click contact us
    Then I contact the customer service with excel row "1" dataset
    
      @Webdriver,@Functional
  Scenario Outline: Data driven with excel and data sets
    
    And click contact us
    Then I contact the customer service with excel row "<row_index>" dataset
    
  Examples:
    |row_index|
    |2|
    |3|
  