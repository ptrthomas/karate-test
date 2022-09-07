Feature:

Scenario:
    * def array = [1, 2, 3]
    * def data = karate.mapWithKey(array, 'id')
    * call read('@called') data

@ignore @called
Scenario:
    * url 'https://httpbin.org/anything'
    * param id = id
    * method get