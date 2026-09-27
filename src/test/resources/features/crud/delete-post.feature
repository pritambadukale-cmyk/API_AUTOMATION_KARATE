@crud
Feature: Delete post

  Scenario: Delete an existing post
    Given url baseUrl
    And path 'posts', 1
    When method DELETE
    Then status 200
    And match response == {}
