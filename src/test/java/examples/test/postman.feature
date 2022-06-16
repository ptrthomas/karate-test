Feature:

  Background:
    * def myResult = ''

  Scenario:

    # Simple POST
    * url 'https://httpbin.org'
    * path 'anything'
    * request {"myKey":"myValue"}
    * method get
    # Status Code is 200
    * status 200

    # Response Contains Expected
    * match response contains deep {"json":{"myKey":"myValue"}}

    * def myResult = response.json.myKey

    # Simple GET
    * url 'https://httpbin.org'
    * path 'anything/' + myResult
    * method get
    # Status Code is 200
    * status 200
