Feature:

  Scenario:
    * def condition = true
    * def result = null
    * if (condition) result = karate.match('1 == 2')
    * print result
    * karate.fail(result.message)