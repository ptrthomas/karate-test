Feature:

Scenario:
* def response = { foo: [ 'a', 'b' ] }
* match response == { foo: [ 'b', 'a' ] }