Feature: Gmail Login

  @realtest
  Scenario Outline: Validate password in login page
      Givenlaunch site using "<bn>"

    When enter userid as "anitha.mekala82"
    And click userid next button
    And enter password as "<pwd>"
    And click password next button
    Then Validate outcome related to given password criteria like "<pwdcriteria>"
    When close site

    Examples: 
      | pwd             | pwdcriteria | bn      |
      | anitha.mekala83 | valid       | chrome  |
      | anitha.mekala83 | valid       | firefox |
      | anitha.mekala83 | valid       | opera   |
      | anitha.mekala83 | valid       | edge    |
      | anitha.mekala80 | invalid     | chrome  |
      | anitha.mekala80 | invalid     | firefox |
      | anitha.mekala80 | invlaid     | opera   |
      | anitha.mekala80 | invlaid     | edge    |
      |                 | blank       | chrome  |
      |                 | blank       | firefox |
      |                 | blank       | opera   |
      |                 | blank       | edge    |
