@workflow
Feature: End-to-end post workflow

  Background:
    * def common = call read('classpath:utils/common.feature')

  Scenario: Create, retrieve, update and delete a post

    # 1. Create an user
    Given url baseUrl
    And path 'posts'
    And request read('classpath:payloads/create-post.json')
    When method POST
    Then status 201

    * def postId = response.id
    * print 'Created post ID:', postId

    # 2. Retrieve using ID extracted from POST response
    Given url baseUrl
    And path 'posts', postId
    When method GET
    Then status 200
    And match response.id == '#number'

    # 3. Update the record
    Given url baseUrl
    And path 'posts', postId
    And request read('classpath:payloads/update-post.json')
    When method PUT
    Then status 200
    And match response.title == 'Updated by Karate'

    # 4. Delete the record
    Given url baseUrl
    And path 'posts', postId
    When method DELETE
    Then status 200
