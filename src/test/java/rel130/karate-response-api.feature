Feature: karate.response() API

Scenario: get response header as lower case
* url 'https://httpbin.org/get'
* method get

* def contentType = karate.response.header('content-type')
* match contentType == 'application/json'
* print karate.request.headers