@crud
Feature: Create post

  Scenario: Create a post
    Given url baseUrl
    And path 'posts'
    And request read('classpath:payloads/create-post.json')
    When method POST
    Then status 201
    And match response.title == 'Karate API Automation'
    And match response.body == 'Created through Karate'
    And match response.userId == 1
    And match response.id == '#number'
