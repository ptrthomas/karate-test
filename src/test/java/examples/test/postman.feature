Feature:

  Scenario:
    * url 'https://httpbin.org'
    * path 'anything'
    * request {"myKey":"myValue"}
    * method get
    * status 200
    * match response contains deep {"json":{"myKey":"myValue"}}
    * def myResult = response.json.myKey
    
    * path 'anything/' + myResult
    * method get
    * status 200
