Feature:

Scenario:

* def emptyVar = ''
    
* url 'https://httpbin.org/get'
* method get

* match emptyVar == ''