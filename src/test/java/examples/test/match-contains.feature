Feature:

  Scenario:
    * def array = [ "a", "b"]
    * def response = { "types": [ "a", "b" ] }
    * match response contains deep { "types": '#(^array)' }