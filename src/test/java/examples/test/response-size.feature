Feature:

Scenario:
    * url 'https://httpbin.org/anything'
    * request { myKey: 'myValue' }
    * method post

    * def size = responseBytes.length
    * assert size > 400
