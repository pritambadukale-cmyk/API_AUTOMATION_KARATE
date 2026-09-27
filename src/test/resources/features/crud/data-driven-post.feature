@crud @dataDriven
Feature: Data driven post validation

  Scenario Outline: Validate posts for multiple IDs
    Given url baseUrl
    And path 'posts', <postId>
    When method GET
    Then status 200
    And match response.id == <expectedId>

    Examples:
      | postId | expectedId |
      | 1      | 1          |
      | 2      | 2          |
      | 3      | 3          |
