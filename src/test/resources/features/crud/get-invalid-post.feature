@crud @negative
Feature: Negative test for invalid post

  Scenario: Get a non-existing post
    Given url baseUrl
    And path 'posts', 9999
    When method GET
    Then status 404
