Feature:

  Scenario: caller
    * def result = call read('@called')
    * match result.foo == 'bar'

  @called
  Scenario:
    * def foo = 'bar'