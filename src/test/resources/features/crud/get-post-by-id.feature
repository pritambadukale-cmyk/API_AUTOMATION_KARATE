@crud
Feature: Get post by ID

  Scenario: Get an existing post
    Given url baseUrl
    And path 'posts', 1
    When method GET
    Then status 200
    And match response.id == 1
    And match response.userId == 1
    And match response.title == '#string'
    And match response.body == '#string'
