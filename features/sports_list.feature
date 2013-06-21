Feature: Sports
  In order to know about different sports
  As a sport fan
  I want list of some sports

  @e
Scenario: List of the sports

Given the system knows about the following sports
When the client requests GET "http://qa-sles-10-64/foundation-webapp/api/events/13"
Then response should be "200"
#And the JSON response should be an array with 2 "id" elements
#And response should be JSON:
#"""
#[
 # {"id": "4","device": "127.0.0.1"},
 # {"id": "5","device": "127.0.0.1"}

#]
#"""


