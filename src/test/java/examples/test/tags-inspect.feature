Feature:

  @smoke
  Scenario:
    * def headerJson = {}
    * if (karate.tags.includes('smoke')) headerJson.foo = 'bar'
    * url 'https://httpbin.org/anything'
    * headers headerJson
    * method get