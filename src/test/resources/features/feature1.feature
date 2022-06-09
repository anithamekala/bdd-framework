Feature: Gmail Login

  Background: 
    Given launch site using "Chrome"

  @Smoketest
  Scenario: Validate Gmail homepage title
    Then title should be "Gmail"
    When close site

  @Smoketest
  Scenario Outline: validate userid in homepage
    When enter userid as  "<uid>"
    And click userid nextbutton
    Then validate outcome related to given userid criteria like "<uidcriteria>"
    When close site

    Examples: 
      | uid             | uidcriteria |
      | anitha.mekala83 | Valid       |
      | anitha.mekala82 | invalid     |
      |                 | blank       |
