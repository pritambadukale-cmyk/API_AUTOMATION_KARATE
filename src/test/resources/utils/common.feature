@ignore
Feature: Common reusable functions

  Scenario: Build post payload
    * def buildPost =
    """
    function(title, body, userId) {
      return {
        title: title,
        body: body,
        userId: userId
      };
    }
    """
