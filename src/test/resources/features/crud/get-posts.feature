@crud @smoke
Feature: Get posts

  Scenario: Get list of posts
    Given url baseUrl
    And path 'posts'
    When method GET
    Then status 200
    And match response == '#[]'
    And match response[0].id == '#number'
    And match response[0].title == '#string'
