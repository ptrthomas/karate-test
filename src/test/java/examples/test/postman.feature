Feature:

  Scenario:
    * url 'https://httpbin.org/anything'
    * request { myKey: 'myValue' }
    * method get
    * status 200
    * match response contains deep { json: { myKey: 'myValue' } }
    
    * path response.json.myKey
    * method get
    * status 200
