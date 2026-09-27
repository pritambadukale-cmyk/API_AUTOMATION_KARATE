@crud @schema
Feature: JSON schema validation

  Scenario: Validate post response structure
    Given url baseUrl
    And path 'posts', 1
    When method GET
    Then status 200

    * def schema = read('classpath:schemas/post-schema.json')
    * match response == schema
