@crud
Feature: Update post

  Scenario: Update an existing post
    Given url baseUrl
    And path 'posts', 1
    And request read('classpath:payloads/update-post.json')
    When method PUT
    Then status 200
    And match response.id == 1
    And match response.title == 'Updated by Karate'
    And match response.body == 'Updated request body'
    And match response.userId == 1
